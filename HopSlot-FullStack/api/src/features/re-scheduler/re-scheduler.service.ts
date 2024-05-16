import { Injectable, OnModuleInit } from '@nestjs/common';
import { DateTime } from 'luxon';
import { from, last, switchMap, tap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { NotificationCodes } from 'src/enums/notification-codes.enum';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { ConsumerService } from 'src/global/kafka/consumer/consumer.service';
import { ProducerService } from 'src/global/kafka/producer/producer.service';
import { NotificationService } from 'src/global/notification/notification.service';

@Injectable()
export class ReSchedulerService implements OnModuleInit {
  constructor(
    private readonly pgPrisma: PostgresPrismaService,
    private readonly kProducer: ProducerService,
    private kConsumer: ConsumerService,
    private readonly notiService: NotificationService,
  ) {}

  onModuleInit() {
    this.kConsumer.consume(
      {
        topics: ['reschedule-appointments'],
      },
      {
        eachMessage: async ({ message }) => {
          const { doctorId } = JSON.parse(message.value?.toString() ?? '');
          if (!doctorId) {
            return;
          }
          this.rescheduleAppointmentsConsumer(doctorId).subscribe();
        },
      },
    );
  }

  rescheduleAppointments(userId: string): APIResponse {
    this.kProducer.produce({
      topic: 'reschedule-appointments',
      messages: [
        {
          value: JSON.stringify({
            doctorId: userId,
          }),
        },
      ],
    });
    return {
      message: 'Rescheduling appointments',
    };
  }

  rescheduleAppointmentsConsumer(doctorId: string) {
    let startDate = DateTime.now();
    startDate = startDate.set({
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    });
    let endDate = DateTime.now();

    endDate = endDate.set({
      hour: 23,
      minute: 59,
      second: 59,
    });
    //TODO: Apply logic for fetching slot by comparing most closest to current and pass that id into appointment as well.

    //Assume: Doc has 1 slot per day
    return from(
      this.pgPrisma.appointment.findMany({
        where: {
          doctorId,
          appointmentStart: {
            gte: startDate.toJSDate(),
            // Match today's date
            lt: endDate.toJSDate(), // Match until end of today
          },
        },
      }),
    ).pipe(
      switchMap((appointments) => {
        return from(appointments).pipe(
          switchMap((app) => {
            return from(
              this.pgPrisma.appointment.update({
                where: {
                  id: app.id,
                },
                data: {
                  additionalDelay: {
                    increment: 15, // TODO: Change to slot duration later.
                  },
                },
                include: {
                  doctor: {
                    select: {
                      user: {
                        select: {
                          id: true,
                          firstName: true,
                          lastName: true,
                          fcmToken: true,
                        },
                      },
                    },
                  },
                  patient: {
                    select: {
                      id: true,
                      fcmToken: true,
                    },
                  },
                },
              }),
            );
          }),
          tap((app) => {
            // Send notification to each patient
            if (!app.patient.fcmToken) return;
            this.notiService
              .sendNotification(app.patient.fcmToken, {
                title: 'Appointment Rescheduled',
                body: `Your appointment with Dr. ${app.doctor.user.firstName} ${app.doctor.user.lastName} has been rescheduled.`,
                data: {
                  code: NotificationCodes.I_AM_LATE,
                  fromId: app.doctor.user.id,
                  fromRole: 'DOCTOR',
                  message: `Your appointment with Dr. ${app.doctor.user.firstName} ${app.doctor.user.lastName} has been rescheduled to ${app.appointmentStart?.toLocaleString()}, as they are running late.`,
                  appointmentId: app.id,
                },
              })
              .subscribe();
          }),
          last(),
        );
      }),
      tap((lastApp) => {
        if (!lastApp.doctor.user.fcmToken) return;

        // Send notification to doctor
        this.notiService
          .sendNotification(lastApp.doctor.user.fcmToken, {
            title: 'Appointment Rescheduled',
            body: `We have noticed that you are running late. We have rescheduled your appointments.`,
            data: {
              code: NotificationCodes.I_AM_LATE,
              fromId: lastApp.doctor.user.id,
              fromRole: 'DOCTOR',
              message: `We have noticed that you are running late. We have rescheduled your appointments by 15min.`,
              appointmentId: lastApp.id,
            },
          })
          .subscribe();
      }),
    );

    // 3. Send notifications
  }
}
