import { Module } from '@nestjs/common';
import { AppointmentRedisService } from './appointment-redis.service';

@Module({
  providers: [AppointmentRedisService],
  exports: [AppointmentRedisService],
})
export class AppointmentRedisModule {}
