import { Module } from '@nestjs/common';
import { AuthService } from './auth.service';
import { AuthController } from './auth.controller';
import { DoctorModule } from '../users/service-providers/doctor/doctor.module';

@Module({
  imports: [DoctorModule],
  controllers: [AuthController],
  providers: [AuthService],
})
export class AuthModule {}
