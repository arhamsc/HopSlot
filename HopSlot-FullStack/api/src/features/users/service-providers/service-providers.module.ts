import { Module } from '@nestjs/common';
import { HospitalModule } from './hospital/hospital.module';
import { DoctorModule } from './doctor/doctor.module';

@Module({
  imports: [HospitalModule, DoctorModule],
})
export class ServiceProvidersModule {}
