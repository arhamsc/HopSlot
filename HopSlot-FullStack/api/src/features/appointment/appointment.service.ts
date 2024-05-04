import { Injectable, NotAcceptableException } from '@nestjs/common';
import { CreateAppointmentDto } from './dto/create-appointment.dto';
import { UpdateAppointmentDto } from './dto/update-appointment.dto';
import { SchedulerService } from './scheduler/scheduler.service';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, from, map, mapTo, switchMap, tap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { AppointmentEssentials } from 'src/core/types/model_essentials.types';
import { ConfigService } from '@nestjs/config';

@Injectable()
export class AppointmentService {
  constructor(
    private scheduler: SchedulerService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly config: ConfigService,
  ) {}

  create(
    createAppointmentDto: CreateAppointmentDto,
  ): Observable<APIResponse<AppointmentEssentials>> {
    return from(
      this.scheduler.getAppointmentRequestsLength({
        doctorId: createAppointmentDto.doctorId,
        hospitalId: createAppointmentDto.hospitalId,
        slotId: createAppointmentDto.appointmentSlotId,
      }),
    ).pipe(
      switchMap((length) => {
        if (length >= this.config.get('BATCH_SIZE')) {
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
                    id: createAppointmentDto.patientId,
                  },
                },
                status: 'PENDING',
              },
              select: {
                id: true,
                status: true,
                delay: true,
                doctorId: true,
                hospitalId: true,
                patientId: true,
                appointmentSlotId: true,
              },
            }),
          );
        }
      }),
      tap((appointment) =>
        this.scheduler.storeAppointmentRequest({
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
}
