import { Module } from '@nestjs/common';
import { SchedulerService } from './scheduler.service';
import { AppointmentModule } from '../appointment/appointment.module';

@Module({
  imports: [AppointmentModule],
  providers: [SchedulerService],
  exports: [SchedulerService],
})
export class SchedulerModule {}
