import { Injectable, Logger, NotAcceptableException } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, from, map, of, switchMap, tap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { AppointmentEssentials } from 'src/core/types/model_essentials.types';
import { ConfigService } from '@nestjs/config';
import { DjangoPredictorService } from './django-predictor/django-predictor.service';
import { AppointmentRedisService } from './appointment-redis/appointment-redis.service';
import { ScheduleAppointmentService } from './schedule-appointment/schedule-appointment.service';
import { FindAllMyAppointmentsParams } from './params';
import { Role } from 'db/postgres';

@Injectable()
export class AppointmentService {
  logger = new Logger(AppointmentService.name);
  constructor(
    private appRedis: AppointmentRedisService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly config: ConfigService,
    private readonly djangoService: DjangoPredictorService,
    private readonly scheduleAppointmentService: ScheduleAppointmentService,
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
          appointmentStart: type
            ? type === 'upcoming'
              ? { gt: new Date() }
              : { lt: new Date() }
            : undefined,
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
      }),
    ).pipe(
      map((appointments) => ({
        data: appointments,
        message: 'Appointments fetched successfully.',
      })),
    );
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
}
