import { InjectRedis } from '@nestjs-modules/ioredis';
import { Injectable } from '@nestjs/common';
import Redis from 'ioredis';
import { GetAppointmentArgs, StoreAppointmentArgs } from './arg-types';

@Injectable()
export class AppointmentRedisService {
  constructor(@InjectRedis() private readonly redis: Redis) {}

  async storeAppointmentRequest({
    appointmentId,
    hospitalId,
    doctorId,
    slotId,
  }: StoreAppointmentArgs) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    const statusKey = `${listKey}:status`;
    await this.redis.set(statusKey, 'pending');
    return await this.redis.lpush(listKey, appointmentId);
  }

  async updateAppointmentRequestStatus({
    hospitalId,
    doctorId,
    slotId,
    status,
  }: GetAppointmentArgs) {
    const statusKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}:status`;
    const currentKey = await this.redis.get(statusKey);
    await this.redis.set(statusKey, status ?? currentKey ?? 'pending');
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
    const statusKey = `${listKey}:status`;
    await this.redis.set(statusKey, 'ready');
    await this.redis.del(listKey);
  }

  async removeAppointmentRequest({
    hospitalId,
    doctorId,
    slotId,
    appointmentId,
  }: GetAppointmentArgs & { appointmentId: string }) {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    await this.redis.lrem(listKey, 0, appointmentId);
  }

  async getAppointmentRequestsStats({
    hospitalId,
    doctorId,
    slotId,
  }: GetAppointmentArgs): Promise<{ length: number; status: string | null }> {
    const listKey = `appointment-requests:${hospitalId}:${doctorId}:${slotId}`;
    const statusKey = `${listKey}:status`;
    const length = await this.redis.llen(listKey);
    const status = await this.redis.get(statusKey);
    return { length, status };
  }
}
