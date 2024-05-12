import { Module } from '@nestjs/common';
import { SchedulerService } from './scheduler.service';
import { AppointmentModule } from '../appointment/appointment.module';
import { AppointmentRedisModule } from '../appointment/appointment-redis/appointment-redis.module';

@Module({
  imports: [AppointmentModule, AppointmentRedisModule],
  providers: [SchedulerService],
  exports: [SchedulerService],
})
export class SchedulerModule {}
