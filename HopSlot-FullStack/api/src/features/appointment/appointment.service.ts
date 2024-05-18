import { Injectable, Logger, NotAcceptableException } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import {
  Observable,
  concatMap,
  filter,
  from,
  last,
  map,
  mergeMap,
  skipWhile,
  switchMap,
  tap,
} from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { AppointmentEssentials } from 'src/core/types/model_essentials.types';
import { ConfigService } from '@nestjs/config';
import { AppointmentRedisService } from './appointment-redis/appointment-redis.service';
import { ScheduleAppointmentService } from './schedule-appointment/schedule-appointment.service';
import { FindAllMyAppointmentsParams } from './params';
import { Appointment, Role } from 'db/postgres';
import { DateTime } from 'luxon';
import { NotificationService } from 'src/global/notification/notification.service';
import { NotificationCodes } from 'src/enums/notification-codes.enum';

@Injectable()
export class AppointmentService {
  logger = new Logger(AppointmentService.name);

  constructor(
    private appRedis: AppointmentRedisService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly config: ConfigService,
    private readonly scheduleAppointmentService: ScheduleAppointmentService,
    private readonly notiService: NotificationService,
  ) {}

  create(
    createAppointmentDto: CreateAppointmentDto,
    userId: string,
  ): Observable<APIResponse<AppointmentEssentials>> {
    const appointmentDate = DateTime.fromISO(createAppointmentDto.date);
    // Checking already existing appointments
    const appointmentExists = from(
      this.pgPrisma.doctorSlot.findUniqueOrThrow({
        where: {
          id: createAppointmentDto.appointmentSlotId,
        },
      }),
    ).pipe(
      switchMap((slot) => {
        const startTime = DateTime.fromJSDate(slot.slotStartTime).set({
          day: appointmentDate.day,
          month: appointmentDate.month,
          year: appointmentDate.year,
        });

        const endTime = DateTime.fromJSDate(slot.slotEndTime).set({
          day: appointmentDate.day,
          month: appointmentDate.month,
          year: appointmentDate.year,
        });

        return from(
          this.pgPrisma.appointment.findFirst({
            where: {
              appointmentSlotId: createAppointmentDto.appointmentSlotId,
              appointmentStart: {
                gte: startTime.toJSDate(),
                lt: endTime.toJSDate(),
              },
            },
          }),
        );
      }),
      map((appointment) => {
        if (appointment) {
          throw new NotAcceptableException(
            'Appointment already exists for this slot.',
          );
        }
        return null;
      }),
    );

    return appointmentExists.pipe(
      switchMap(() =>
        from(
          this.appRedis.getAppointmentRequestsStats({
            doctorId: createAppointmentDto.doctorId,
            hospitalId: createAppointmentDto.hospitalId,
            slotId: createAppointmentDto.appointmentSlotId,
          }),
        ).pipe(
          tap((stats) => {
            if (stats.length >= this.config.get('BATCH_SIZE')) {
              if (stats.status === 'pending') {
                this.scheduleAppointmentService
                  .schedulerAppointment(
                    createAppointmentDto.hospitalId,
                    createAppointmentDto.doctorId,
                    createAppointmentDto.appointmentSlotId,
                  )
                  .subscribe();
              }
              throw new NotAcceptableException(
                'No more appointments available for this slot.',
              );
            }
            return;
          }),
          switchMap(() => {
            return from(
              this.pgPrisma.doctorSlot.findFirstOrThrow({
                where: {
                  id: createAppointmentDto.appointmentSlotId,
                },
              }),
            );
          }),
          switchMap((slot) => {
            const slotStartTime = DateTime.fromJSDate(slot.slotStartTime);
            let initialTime = DateTime.fromISO(createAppointmentDto.date);
            initialTime = initialTime.set({
              hour: slotStartTime.hour,
              minute: slotStartTime.minute,
              second: 0,
              millisecond: 0,
            });
            return from(
              this.pgPrisma.appointment.create({
                data: {
                  appointmentSlot: {
                    connect: {
                      id: createAppointmentDto.appointmentSlotId,
                    },
                  },
                  doctor: {
                    connect: {
                      userId: createAppointmentDto.doctorId,
                    },
                  },
                  hospital: {
                    connect: {
                      id: createAppointmentDto.hospitalId,
                    },
                  },
                  patient: {
                    connect: {
                      id: userId,
                    },
                  },
                  symptoms: {
                    createMany: {
                      data: createAppointmentDto.symptoms,
                    },
                  },
                  status: 'PENDING',
                  appointmentStart: initialTime.toJSDate(),
                },
                select: {
                  id: true,
                  status: true,
                  additionalDelay: true,
                  doctorId: true,
                  hospitalId: true,
                  patientId: true,
                  appointmentSlotId: true,
                  symptoms: true,
                  appointmentStartDelay: true,
                  appointmentStart: true,
                  severity: true,
                },
              }),
            );
          }),
          tap((appointment) =>
            this.appRedis.storeAppointmentRequest({
              appointmentId: appointment.id,
              doctorId: appointment.doctorId,
              hospitalId: appointment.hospitalId,
              slotId: createAppointmentDto.appointmentSlotId,
            }),
          ),
          tap((appointment) => {
            return from(
              this.pgPrisma.user.findUnique({
                where: {
                  id: appointment.patientId,
                },
              }),
            )
              .pipe(
                tap((user) => {
                  if (!user || !user.fcmToken) {
                    return;
                  }

                  return this.notiService
                    .sendNotification(user.fcmToken, {
                      title: 'New appointment request',
                      body: 'Your appointment request has been registered. Please wait for confirmation.',
                      data: {
                        code: NotificationCodes.NEW_APPOINTMENT,
                        fromId: appointment.patientId,
                        fromRole: Role.PATIENT,
                        message:
                          'Your appointment request has been registered. Please wait for confirmation.',
                        appointmentId: appointment.id,
                      },
                    })
                    .subscribe();
                }),
              )
              .subscribe();
          }),
          tap((appointment) => {
            return from(
              this.pgPrisma.user.findUnique({
                where: {
                  id: appointment.doctorId,
                },
              }),
            )
              .pipe(
                tap((user) => {
                  if (!user || !user.fcmToken) {
                    return;
                  }

                  return this.notiService
                    .sendNotification(user.fcmToken, {
                      title: 'New appointment request',
                      body: 'There is a new appointment request. It will be scheduled soon.',
                      data: {
                        code: NotificationCodes.NEW_APPOINTMENT,
                        fromId: appointment.patientId,
                        fromRole: Role.PATIENT,
                        message:
                          'There is a new appointment request. It will be scheduled soon.',
                        appointmentId: appointment.id,
                      },
                    })
                    .subscribe();
                }),
              )
              .subscribe();
          }),
          map((appointment) => ({
            data: appointment,
            message: 'Appointment created successfully.',
          })),
        ),
      ),
    );
  }

  findMyAppointments({
    userId,
    forEntity,
    type,
  }: FindAllMyAppointmentsParams): Observable<
    APIResponse<AppointmentEssentials[]>
  > {
    return from(
      this.pgPrisma.appointment.findMany({
        where: {
          [forEntity === Role.DOCTOR ? 'doctorId' : 'patientId']: userId,
          OR: [
            {
              appointmentStart: type
                ? type === 'upcoming'
                  ? { gt: new Date() }
                  : { lt: new Date() }
                : undefined,
            },
            {
              appointmentStart:
                type === 'upcoming' ? { equals: null } : undefined,
            },
          ],
          status: type === 'upcoming' ? { not: 'COMPLETED' } : undefined,
        },
        select: {
          id: true,
          status: true,
          additionalDelay: true,
          doctorId: true,
          hospitalId: true,
          patientId: true,
          appointmentSlotId: true,
          symptoms: {
            select: {
              id: true,
              name: true,
              desc: true,
              type: true,
              values: true,
            },
          },
          appointmentStartDelay: true,
          appointmentStart: true,
          severity: true,
        },
        orderBy: {
          appointmentStart: 'desc',
        },
      }),
    ).pipe(
      map((appointments) => ({
        data: appointments,
        message: 'Appointments fetched successfully.',
      })),
    );
  }

  findAll(
    userId: string,
    role: Role,
  ): Observable<APIResponse<Partial<Appointment>[]>> {
    // const res = await this.scheduler('2', '3', '4');
    return from(
      this.pgPrisma.appointment.findMany({
        where: {
          [role === Role.DOCTOR ? 'doctorId' : 'patientId']: userId,
        },
        select: {
          id: true,
          status: true,
          patient: {
            select: {
              id: true,
              firstName: true,
              lastName: true,
            },
          },
          doctor: {
            select: {
              user: {
                select: {
                  id: true,
                  firstName: true,
                  lastName: true,
                },
              },
            },
          },
          appointmentStart: true,
        },
        orderBy: {
          appointmentStart: 'desc',
        },
      }),
    ).pipe(
      map((appointments) => ({
        data: appointments.map((a) => ({ ...a, doctor: a.doctor.user })),
        message: 'Appointments fetched successfully.',
      })),
    );
  }

  findOne(id: string): Observable<APIResponse<Partial<Appointment>>> {
    return from(
      this.pgPrisma.appointment.findUniqueOrThrow({
        where: { id },
        select: {
          id: true,
          status: true,
          additionalDelay: true,
          hospital: {
            select: {
              id: true,
              name: true,
              address: true,
              email: true,
              phone: true,
            },
          },
          appointmentStart: true,
          appointmentStartDelay: true,
          patient: {
            select: {
              id: true,
              firstName: true,
              lastName: true,
            },
          },
          doctor: {
            select: {
              user: {
                select: {
                  id: true,
                  firstName: true,
                  lastName: true,
                  email: true,
                },
              },
            },
          },
        },
      }),
    ).pipe(
      map((appointment) => ({
        data: { ...appointment, doctor: appointment.doctor.user },
        message: 'Appointment fetched successfully.',
      })),
    );
  }

  update(id: number, updateAppointmentDto: UpdateAppointmentDto) {
    return `This action updates a #${id} appointment`;
  }

  remove(id: number) {
    return `This action removes a #${id} appointment`;
  }

  cancelAppointment(
    id: string,
    patientId: string,
  ): Observable<APIResponse<Appointment>> {
    return from(
      this.pgPrisma.appointment.findFirstOrThrow({
        where: { id, status: { notIn: ['COMPLETED', 'CANCELLED'] }, patientId },
        include: {
          appointmentSlot: true,
          patient: {
            select: {
              id: true,
              fcmToken: true,
              firstName: true,
              lastName: true,
            },
          },
          doctor: {
            select: {
              user: {
                select: {
                  id: true,
                  firstName: true,
                  lastName: true,
                  fcmToken: true,
                },
              },
            },
          },
        },
      }),
    ).pipe(
      map((app) => {
        if (app.appointmentStart! < new Date()) {
          throw new NotAcceptableException('Cannot cancel past appointments');
        }
        return app;
      }),
      concatMap((appointment) => {
        // from() performs the event for each member of the list
        let slotEndTime = DateTime.fromJSDate(
          appointment.appointmentSlot.slotEndTime,
        );

        let appointmentStart = DateTime.fromJSDate(
          appointment.appointmentSlot.slotStartTime,
        );

        appointmentStart = appointmentStart.set({
          month:
            (appointment.appointmentStart?.getMonth() ??
              appointmentStart.month) + 1,
          day: appointment.appointmentStart?.getDate() ?? appointmentStart.day,
          year:
            appointment.appointmentStart?.getFullYear() ??
            appointmentStart.year,
        });

        slotEndTime = slotEndTime
          .set({
            month: appointmentStart.month,
            day: appointmentStart.day,
            year: appointmentStart.year,
          })
          .plus({ minutes: 15 });

        return from(
          this.pgPrisma.appointment.findMany({
            where: {
              appointmentStart: {
                gte: appointmentStart.toJSDate(),
                lte: slotEndTime.toJSDate(),
              },
              appointmentSlotId: appointment.appointmentSlotId,
              status: {
                notIn: ['CANCELLED', 'COMPLETED'],
              },
              id: {
                not: appointment.id,
              },
            },
            include: {
              patient: {
                select: {
                  id: true,
                  fcmToken: true,
                },
              },
              appointmentSlot: true,
            },
            orderBy: {
              appointmentStart: 'asc',
            },
          }),
        ).pipe(
          map((appointments) => {
            console.log({ appointments });
            if (appointments.length === 0) {
              return [];
            } else {
              return appointments;
            }
          }),
          skipWhile((appointments) => appointments.length === 0),
          // Split all the appointments into individual appointments due to the return type of findMany as a promise
          mergeMap((appointments) => appointments ?? []),
          filter((appointment) => appointment.appointmentStart !== null),
          tap(async (appointment) => {
            let appointmentStartTime = DateTime.fromJSDate(
              appointment.appointmentStart!,
              {
                zone: 'utc',
              },
            );
            appointmentStartTime = appointmentStartTime.minus({ minutes: 15 });
            const slotStartTime = DateTime.fromJSDate(
              appointment.appointmentSlot.slotStartTime,
            );
            const finalTime = appointmentStartTime.toJSDate();
            const decrementBy =
              appointmentStartTime.diff(slotStartTime).minutes >= 15 ? 15 : 0;
            await this.pgPrisma.appointment.update({
              where: { id: appointment.id },
              data: {
                appointmentStart: finalTime,
                additionalDelay: {
                  decrement: decrementBy,
                },
                appointmentStartDelay: {
                  decrement: decrementBy,
                },
              },
            });
          }),
          // Send to each patient
          tap((appointment) => {
            if (!appointment.patient.fcmToken) {
              return;
            }
            return this.notiService
              .sendNotification(appointment.patient.fcmToken, {
                title: 'Appointment rescheduled',
                body: 'Your appointment has been rescheduled due to a cancellation.',
                data: {
                  code: NotificationCodes.APPOINTMENT_RESCHEDULED,
                  fromId: appointment.doctorId,
                  fromRole: Role.DOCTOR,
                  message:
                    'Your appointment has been rescheduled due to a cancellation. It has been pushed back by 15 minutes.',
                  appointmentId: appointment.id,
                },
              })
              .subscribe();
          }),
          map(() => appointment),
        );
      }),
      tap(async (appointment) => {
        await this.pgPrisma.appointment.update({
          where: {
            id: appointment.id,
          },
          data: {
            status: 'CANCELLED',
          },
        });
      }),
      tap(async (appointment) => {
        await this.appRedis.removeAppointmentRequest({
          doctorId: appointment.doctorId,
          hospitalId: appointment.hospitalId,
          slotId: appointment.appointmentSlotId,
          appointmentId: appointment.id,
        });
      }),
      tap(async (appointment) => {
        await this.appRedis.updateAppointmentRequestStatus({
          doctorId: appointment.doctorId,
          hospitalId: appointment.hospitalId,
          slotId: appointment.appointmentSlotId,
          status: 'pending',
        });
      }),
      // TODO: Test this properly if it is the same incoming appointment
      last(),
      tap((appointment) => {
        // To doctor
        if (!appointment.doctor.user.fcmToken) {
          return;
        }

        return this.notiService
          .sendNotification(appointment.doctor.user.fcmToken, {
            title: 'Appointment cancelled',
            body: `${appointment.patient.firstName} ${appointment.patient.lastName} has cancelled the appointment scheduled for ${appointment.appointmentStart?.toLocaleString()}`,
            data: {
              code: NotificationCodes.APPOINTMENT_CANCELLED,
              fromId: appointment.patientId,
              fromRole: Role.PATIENT,
              message: `${appointment.patient.firstName} ${appointment.patient.lastName} has cancelled the appointment. Others have been rescheduled.`,
              appointmentId: appointment.id,
            },
          })
          .subscribe();
      }),
      tap((appointment) => {
        // TO cancelled patient
        if (!appointment.patient.fcmToken) {
          return;
        }

        return this.notiService
          .sendNotification(appointment.patient.fcmToken, {
            title: 'Appointment cancelled',
            body: 'Your appointment has been cancelled.',
            data: {
              code: NotificationCodes.APPOINTMENT_CANCELLED,
              fromId: appointment.doctorId,
              fromRole: Role.DOCTOR,
              message: 'Your appointment has been cancelled.',
              appointmentId: appointment.id,
            },
          })
          .subscribe();
      }),
      map((appointment) => {
        return {
          message: 'Appointment cancelled successfully',
          data: appointment,
        };
      }),
    );
  }
}
