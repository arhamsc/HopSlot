import { Injectable, OnModuleInit } from '@nestjs/common';
import { DateTime } from 'luxon';
import { from } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { ConsumerService } from 'src/global/kafka/consumer/consumer.service';
import { ProducerService } from 'src/global/kafka/producer/producer.service';

@Injectable()
export class ReSchedulerService implements OnModuleInit {
  constructor(
    private readonly pgPrisma: PostgresPrismaService,
    private readonly kProducer: ProducerService,
    private kConsumer: ConsumerService,
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
    let startDate = DateTime.now().setZone('utc');
    startDate = startDate.set({
      hour: 0,
      minute: 0,
      second: 0,
      millisecond: 0,
    });
    let endDate = DateTime.now().setZone('utc');

    endDate = endDate.set({
      hour: 23,
      minute: 59,
      second: 59,
    });
    //TODO: Apply logic for fetching slot by comparing most closest to current and pass that id into appointment as well.

    //Assume: Doc has 1 slot per day
    return from(
      this.pgPrisma.appointment.updateMany({
        where: {
          doctorId,
          appointmentStart: {
            gte:
              startDate.toISO({
                includeOffset: false,
              }) + 'Z',
            // Match today's date
            lt:
              endDate.toISO({
                includeOffset: false,
              }) + 'Z', // Match until end of today
          },
        },
        data: {
          additionalDelay: {
            increment: 15, // TODO: Change to slot duration later.
          },
        },
      }),
    );

    // 3. Send notifications
  }
}
