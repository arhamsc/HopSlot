import { InjectRedis } from '@nestjs-modules/ioredis';
import { Injectable } from '@nestjs/common';
import { Redis } from 'ioredis';

@Injectable()
export class SchedulerService {
  constructor(@InjectRedis() private readonly redis: Redis) {}

  async storeAppointmentRequest(
    appointmentId: string,
    hospitalId: string,
    doctorId: string,
    slotId: string,
  ) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    return await this.redis.lpush(listKey, appointmentId);
  }

  // Retrieving multiple IDs:
  async getAppointmentRequests(
    hospitalId: string,
    doctorId: string,
    slotId: string,
  ): Promise<string[]> {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    return await this.redis.lrange(listKey, 0, -1);
  }

  async emptyAppointmentRequests(
    hospitalId: string,
    doctorId: string,
    slotId: string,
  ) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    await this.redis.del(listKey);
  }
}
