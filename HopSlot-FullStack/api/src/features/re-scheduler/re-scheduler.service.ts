import { Injectable, OnModuleInit } from '@nestjs/common';
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
    const todayStart = new Date();
    todayStart.setHours(0, 0, 0, 0);
    const todayEnd = new Date();
    todayEnd.setHours(23, 59, 59, 999);
    //TODO: Apply logic for fetching slot by comparing most closest to current and pass that id into appointment as well.
    return from(
      this.pgPrisma.appointment.updateMany({
        where: {
          doctorId,
          appointmentStart: {
            gte: todayStart, // Match today's date
            lt: todayEnd, // Match until end of today
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
