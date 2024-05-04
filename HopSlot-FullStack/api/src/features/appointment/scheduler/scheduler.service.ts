import { InjectRedis } from '@nestjs-modules/ioredis';
import { Injectable } from '@nestjs/common';
import { Redis } from 'ioredis';
import { GetAppointmentArgs, StoreAppointmentArgs } from './arg-types';

@Injectable()
export class SchedulerService {
  constructor(@InjectRedis() private readonly redis: Redis) {}

  async storeAppointmentRequest({
    appointmentId,
    hospitalId,
    doctorId,
    slotId,
  }: StoreAppointmentArgs) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    return await this.redis.lpush(listKey, appointmentId);
  }

  // Retrieving multiple IDs:
  async getAppointmentRequests({
    hospitalId,
    doctorId,
    slotId,
  }: GetAppointmentArgs): Promise<string[]> {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    return await this.redis.lrange(listKey, 0, -1);
  }

  async emptyAppointmentRequests({
    hospitalId,
    doctorId,
    slotId,
  }: GetAppointmentArgs) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    await this.redis.del(listKey);
  }

  async getAppointmentRequestsLength({
    hospitalId,
    doctorId,
    slotId,
  }: GetAppointmentArgs): Promise<number> {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    return await this.redis.llen(listKey);
  }
}
