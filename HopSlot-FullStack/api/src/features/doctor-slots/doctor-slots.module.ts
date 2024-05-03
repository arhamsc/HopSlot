import { Module } from '@nestjs/common';
import { DoctorSlotsService } from './doctor-slots.service';
import { DoctorSlotsController } from './doctor-slots.controller';

@Module({
  controllers: [DoctorSlotsController],
  providers: [DoctorSlotsService],
})
export class DoctorSlotsModule {}
