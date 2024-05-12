import { Injectable, Logger } from '@nestjs/common';
import { catchError, from, map, switchMap, tap } from 'rxjs';
import { AppointmentRedisService } from '../appointment-redis/appointment-redis.service';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { ConfigService } from '@nestjs/config';
import { DjangoPredictorService } from '../django-predictor/django-predictor.service';
import { AppointmentService } from '../appointment.service';

@Injectable()
export class ScheduleAppointmentService {
  logger = new Logger(AppointmentService.name);

  constructor(
    private appRedis: AppointmentRedisService,
    private readonly pgPrisma: PostgresPrismaService,
    private readonly config: ConfigService,
    private readonly djangoService: DjangoPredictorService,
  ) {}
  schedulerAppointment(hospitalId: string, doctorId: string, slotId: string) {
    return from(
      this.appRedis.getAppointmentRequests({ hospitalId, doctorId, slotId }),
    ).pipe(
      switchMap((appointments) =>
        this.pgPrisma.appointment.findMany({
          where: {
            id: {
              in: appointments,
            },
          },
          include: {
            symptoms: true,
          },
        }),
      ),
      map((appointments) => ({
        appointments: appointments.map((a) => ({
          appointmentId: a.id,
          createdAt: a.createdAt,
          appointmentStartDate: a.appointmentStart,
          symptoms: a.symptoms.map((s) => ({
            name: s.name,
            description: s.desc,
            type: s.type,
            values: s.values,
          })),
        })),
      })),

      switchMap((obj) =>
        this.djangoService.getPredictions(obj.appointments).pipe(
          map((a) => {
            return {
              predictions: a,
              appointments: obj.appointments,
            };
          }),
        ),
      ),
      map((predictions) => {
        if (predictions.predictions.length === 0) {
          throw new Error('No predictions available');
        }
        const preds = predictions.predictions.sort((a, b) => {
          if (a.severity < b.severity) {
            return 1; // a has lower severity, should come first
          } else if (a.severity > b.severity) {
            return -1; // b has lower severity, should come first
          } else {
            // Severity is equal, compare createdTime (ascending)
            const app1 = predictions.appointments.find(
              (app) => app.appointmentId === a.appointmentId,
            );
            const app2 = predictions.appointments.find(
              (app) => app.appointmentId === b.appointmentId,
            );
            if (!app1 || !app2) return 0;
            if (app1.createdAt < app2.createdAt) {
              return -1; // a is older, should come first
            } else if (app1.createdAt > app2.createdAt) {
              return 1; // b is older, should come first
            } else {
              return 0; // a and b are identical
            }
          }
        });

        return { predictions: preds, appointments: predictions.appointments };
      }),
      switchMap((predictions) =>
        from(
          this.pgPrisma.doctorSlot.findUniqueOrThrow({
            where: {
              id: slotId,
            },
            select: {
              id: true,
              durationOfPerVisit: true,
              slotStartTime: true,
            },
          }),
        ).pipe(map((slot) => ({ slot, ...predictions }))),
      ),
      tap(async (merged) => {
        let offset = 0;
        for (const prediction of merged.predictions) {
          const newDate = new Date(merged.slot.slotStartTime);
          newDate.setMinutes(
            merged.slot.slotStartTime.getMinutes() +
              offset * merged.slot.durationOfPerVisit,
          );

          const da = merged.appointments.find(
            (a) => a.appointmentId === prediction.appointmentId,
          )!.appointmentStartDate;
          da?.setHours(newDate.getHours());
          da?.setMinutes(newDate.getMinutes());

          await this.pgPrisma.appointment.update({
            where: {
              id: prediction.appointmentId,
            },
            data: {
              severity: prediction.severity,
              appointmentStartDelay: offset * merged.slot.durationOfPerVisit,
              appointmentStart: da,
              status: 'CONFIRMED',
            },
          });
          offset++;
        }
      }),
      tap((merged) => {
        if (merged.predictions.length > 0) {
          this.appRedis.updateAppointmentRequestStatus({
            hospitalId,
            doctorId,
            slotId,
            status: 'filled',
          });
        }
      }),
      catchError((err) => {
        this.logger.error(err);
        return err;
      }),
    );
  }
}
