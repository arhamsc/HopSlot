import { Module } from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { AppointmentController } from './appointment.controller';
import { SchedulerModule } from '../scheduler/scheduler.module';
import { DjangoPredictorService } from './django-predictor/django-predictor.service';
import { HttpModule } from '@nestjs/axios';
import { ConfigService } from '@nestjs/config';
import { AppointmentRedisModule } from './appointment-redis/appointment-redis.module';

@Module({
  controllers: [AppointmentController],
  providers: [AppointmentService, DjangoPredictorService],
  exports: [AppointmentService],
  imports: [
    HttpModule.registerAsync({
      useFactory: async (config: ConfigService) => ({
        baseURL: config.get('DJANGO_API_URL'),
        headers: {
          'Content-Type': 'application/json',
        },
      }),
      inject: [ConfigService],
    }),
    AppointmentRedisModule,
  ],
})
export class AppointmentModule {}
