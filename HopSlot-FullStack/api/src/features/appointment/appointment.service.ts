import { Injectable, Logger, NotAcceptableException } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, catchError, from, map, switchMap, tap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { AppointmentEssentials } from 'src/core/types/model_essentials.types';
import { ConfigService } from '@nestjs/config';
import { DjangoPredictorService } from './django-predictor/django-predictor.service';
import { AppointmentRedisService } from './appointment-redis/appointment-redis.service';

@Injectable()
export class AppointmentService {
  logger = new Logger(AppointmentService.name);
  constructor(
    private appRedis: AppointmentRedisService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly config: ConfigService,
    private readonly djangoService: DjangoPredictorService,
  ) {}

  sample() {
    return this.djangoService.sample();
  }

  create(
    createAppointmentDto: CreateAppointmentDto,
    userId: string,
  ): Observable<APIResponse<AppointmentEssentials>> {
    return from(
      this.appRedis.getAppointmentRequestsStats({
        doctorId: createAppointmentDto.doctorId,
        hospitalId: createAppointmentDto.hospitalId,
        slotId: createAppointmentDto.appointmentSlotId,
      }),
    ).pipe(
      switchMap((stats) => {
        console.log({ stats });
        if (stats.length >= this.config.get('BATCH_SIZE')) {
          // if (stats.status === 'pending') {
          this.schedulerAppointment(
            createAppointmentDto.hospitalId,
            createAppointmentDto.doctorId,
            createAppointmentDto.appointmentSlotId,
          ).subscribe();
          // }
          throw new NotAcceptableException(
            'No more appointments available for this slot.',
          );
        } else {
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
        }
      }),
      tap((appointment) =>
        this.appRedis.storeAppointmentRequest({
          appointmentId: appointment.id,
          doctorId: appointment.doctorId,
          hospitalId: appointment.hospitalId,
          slotId: createAppointmentDto.appointmentSlotId,
        }),
      ),
      map((appointment) => ({
        data: appointment,
        message: 'Appointment created successfully.',
      })),
    );
  }

  async findAll() {
    // const res = await this.scheduler('2', '3', '4');
    return `This action returns all appointment`;
  }

  findOne(id: number) {
    return `This action returns a #${id} appointment`;
  }

  update(id: number, updateAppointmentDto: UpdateAppointmentDto) {
    return `This action updates a #${id} appointment`;
  }

  remove(id: number) {
    return `This action removes a #${id} appointment`;
  }

  schedulerAppointment(hospitalId: string, doctorId: string, slotId: string) {
    return from(
      this.appRedis.getAppointmentRequests({ hospitalId, doctorId, slotId }),
    ).pipe(
      switchMap((appointments) =>
        this.pgPrisma.appointment.findMany({
          where: {
            id: {
              in: appointments,
            },
          },
          include: {
            symptoms: true,
          },
        }),
      ),
      map((appointments) => ({
        appointments: appointments.map((a) => ({
          appointmentId: a.id,
          createdAt: a.createdAt,
          appointmentStartDate: a.appointmentStart,
          symptoms: a.symptoms.map((s) => ({
            name: s.name,
            description: s.desc,
            type: s.type,
            values: s.values,
          })),
        })),
      })),
      switchMap((obj) =>
        this.djangoService.getPredictions(obj.appointments).pipe(
          map((a) => {
            return {
              predictions: a,
              appointments: obj.appointments,
            };
          }),
        ),
      ),
      map((predictions) => {
        if (predictions.predictions.length === 0) {
          throw new Error('No predictions available');
        }
        const preds = predictions.predictions.sort((a, b) => {
          if (a.severity < b.severity) {
            return 1; // a has lower severity, should come first
          } else if (a.severity > b.severity) {
            return -1; // b has lower severity, should come first
          } else {
            // Severity is equal, compare createdTime (ascending)
            const app1 = predictions.appointments.find(
              (app) => app.appointmentId === a.appointmentId,
            );
            const app2 = predictions.appointments.find(
              (app) => app.appointmentId === b.appointmentId,
            );
            if (!app1 || !app2) return 0;
            if (app1.createdAt < app2.createdAt) {
              return -1; // a is older, should come first
            } else if (app1.createdAt > app2.createdAt) {
              return 1; // b is older, should come first
            } else {
              return 0; // a and b are identical
            }
          }
        });

        return { predictions: preds, appointments: predictions.appointments };
      }),
      switchMap((predictions) =>
        from(
          this.pgPrisma.doctorSlot.findUniqueOrThrow({
            where: {
              id: slotId,
            },
            select: {
              id: true,
              durationOfPerVisit: true,
              slotStartTime: true,
            },
          }),
        ).pipe(map((slot) => ({ slot, ...predictions }))),
      ),
      tap(async (merged) => {
        let offset = 0;
        for (const prediction of merged.predictions) {
          const newDate = new Date(merged.slot.slotStartTime);
          newDate.setMinutes(
            merged.slot.slotStartTime.getMinutes() +
              offset * merged.slot.durationOfPerVisit,
          );

          const da = merged.appointments.find(
            (a) => a.appointmentId === prediction.appointmentId,
          )!.appointmentStartDate;
          da?.setHours(newDate.getHours());
          da?.setMinutes(newDate.getMinutes());

          await this.pgPrisma.appointment.update({
            where: {
              id: prediction.appointmentId,
            },
            data: {
              severity: prediction.severity,
              appointmentStartDelay: offset * merged.slot.durationOfPerVisit,
              appointmentStart: da,
              status: 'CONFIRMED',
            },
          });
          offset++;
        }
      }),
      tap((merged) => {
        if (merged.predictions.length > 0) {
          this.appRedis.updateAppointmentRequestStatus({
            hospitalId,
            doctorId,
            slotId,
            status: 'filled',
          });
        }
      }),
      catchError((err) => {
        this.logger.error(err);
        return err;
      }),
    );
  }
}
