import { Module } from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { AppointmentController } from './appointment.controller';
import { SchedulerModule } from './scheduler/scheduler.module';

@Module({
  controllers: [AppointmentController],
  providers: [AppointmentService],
  imports: [SchedulerModule],
})
export class AppointmentModule {}
