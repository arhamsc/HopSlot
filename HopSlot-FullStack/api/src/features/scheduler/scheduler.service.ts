import { InjectRedis } from '@nestjs-modules/ioredis';
import { Injectable, Logger } from '@nestjs/common';
import { Redis } from 'ioredis';
import { Cron, CronExpression } from '@nestjs/schedule';
import { ConfigService } from '@nestjs/config';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { AppointmentService } from '../appointment/appointment.service';

@Injectable()
export class SchedulerService {
  logger = new Logger(SchedulerService.name);
  constructor(
    @InjectRedis() private readonly redis: Redis,
    private readonly config: ConfigService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly appointmentService: AppointmentService,
  ) {}
  //1. Cron Job to run every day to clear the appointment requests
  @Cron(CronExpression.EVERY_DAY_AT_MIDNIGHT)
  async clearAppointmentRequests() {
    this.logger.log('Cron: Clearing appointment requests');

    const keys = await this.redis.keys('appointment-requests:*');
    const appointmentKeys = await keys.filter(
      (key) => !key.endsWith(':status'),
    );

    for (const key of appointmentKeys) {
      // Get the status of the appointment
      const status = await this.redis.get(`${key}:status`);
      // Get the slot time from the key
      const [_, hospitalId, doctorId, slotId] = key.split(':');
      const slot = await this.pgPrisma.doctorSlot.findUnique({
        where: { id: slotId },
      });
      const appointmentRequests = await this.redis.lrange(key, 0, 1);
      const appointment = await this.pgPrisma.appointment.findUnique({
        where: {
          id: appointmentRequests[0],
        },
      });

      if (!slot || !appointment || appointment.appointmentStart == null) {
        continue;
      }

      if (appointment.appointmentStart < new Date()) {
        if (status === 'filled') {
          console.log({ slot, slotId, appointment });
          await this.redis.del(key);
          await this.redis.del(`${key}:status`);
        } else {
          // Send notification to patients
        }
      }
    }
  }

  //2. Cron Job to run every 2 hrs to check the appointment are filled and trigger request.
  @Cron(CronExpression.EVERY_2_HOURS)
  async checkAndTriggerAppointments() {
    this.logger.log('Cron: Checking and triggering appointments');

    const keys = await this.redis.keys('appointment-requests:*');
    const appointmentKeys = keys.filter((key) => !key.endsWith(':status'));
    console.log({ appointmentKeys });
    for (const key of appointmentKeys) {
      // Get the status of the appointment
      const status = await this.redis.get(`${key}:status`);
      // Get the slot time from the key
      const [_, hospitalId, doctorId, slotId] = key.split(':');
      const appointmentRequests = await this.redis.lrange(key, 0, 1);
      if (appointmentRequests.length == 0) {
        continue;
      }

      if (status === 'filled') {
        this.appointmentService
          .schedulerAppointment(hospitalId, doctorId, slotId)
          .subscribe();
      }
    }
  }
}
