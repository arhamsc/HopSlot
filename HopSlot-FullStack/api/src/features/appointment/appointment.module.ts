import { Module } from '@nestjs/common';
import { AppointmentService } from './appointment.service';
import { AppointmentController } from './appointment.controller';
import { DjangoPredictorService } from './django-predictor/django-predictor.service';
import { HttpModule } from '@nestjs/axios';
import { ConfigService } from '@nestjs/config';
import { AppointmentRedisModule } from './appointment-redis/appointment-redis.module';
import { ScheduleAppointmentService } from './schedule-appointment/schedule-appointment.service';
import { AppointmentLookupService } from './appointment-lookup/appointment-lookup.service';
import { AppointmentLookupController } from './appointment-lookup/appointment-lookup.controller';

@Module({
  controllers: [AppointmentController, AppointmentLookupController],
  providers: [
    AppointmentService,
    DjangoPredictorService,
    ScheduleAppointmentService,
    AppointmentLookupService,
  ],
  exports: [AppointmentService, ScheduleAppointmentService],
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
