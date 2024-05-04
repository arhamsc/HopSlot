import { ConflictException, Injectable } from '@nestjs/common';
import { CreateDoctorSlotDto } from './dto/create-doctor-slot.dto';
import { UpdateDoctorSlotDto } from './dto/update-doctor-slot.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, from, map, switchMap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { DoctorSlotEssentials } from 'src/core/types/model_essentials.types';

@Injectable()
export class DoctorSlotsService {
  constructor(private readonly pgPrisma: PostgresPrismaService) {}

  create(
    createDoctorSlotDto: CreateDoctorSlotDto,
  ): Observable<APIResponse<DoctorSlotEssentials>> {
    return from(
      this.pgPrisma.doctorSlot.findFirst({
        where: {
          slotStart: {
            gte: createDoctorSlotDto.slotStart,
            lte: createDoctorSlotDto.slotEnd,
          },
        },
      }),
    ).pipe(
      switchMap((slot) => {
        if (slot) {
          throw new ConflictException('Slot already exists');
        }
        return from(
          this.pgPrisma.doctorSlot.create({
            data: createDoctorSlotDto,
            select: {
              id: true,
              slotStart: true,
              slotEnd: true,
              doctorId: true,
              duration: true,
              status: true,
            },
          }),
        );
      }),
      map((slot) => ({
        data: slot,
        message: 'Slot created successfully',
      })),
    );
  }

  findAll(): Observable<APIResponse<DoctorSlotEssentials[]>> {
    return from(
      this.pgPrisma.doctorSlot.findMany({
        select: {
          id: true,
          slotStart: true,
          slotEnd: true,
          doctorId: true,
          duration: true,
          status: true,
        },
      }),
    ).pipe(
      map((slots) => ({
        data: slots,
        message: 'Slots fetched successfully',
      })),
    );
  }

  findOne(id: string): Observable<APIResponse<DoctorSlotEssentials>> {
    return from(
      this.pgPrisma.doctorSlot.findUniqueOrThrow({
        where: {
          id,
        },
        select: {
          id: true,
          slotStart: true,
          slotEnd: true,
          doctorId: true,
          duration: true,
          status: true,
        },
      }),
    ).pipe(
      map((slot) => ({
        data: slot,
        message: 'Slot fetched successfully',
      })),
    );
  }

  findSlotsByDoctorId(
    doctorId: string,
  ): Observable<APIResponse<DoctorSlotEssentials[]>> {
    return from(
      this.pgPrisma.doctorSlot.findMany({
        where: {
          doctorId,
        },
        select: {
          id: true,
          slotStart: true,
          slotEnd: true,
          doctorId: true,
          duration: true,
          status: true,
        },
      }),
    ).pipe(
      map((slots) => ({
        data: slots,
        message: 'Slots fetched successfully',
      })),
    );
  }

  update(
    id: string,
    updateDoctorSlotDto: UpdateDoctorSlotDto,
  ): Observable<APIResponse<DoctorSlotEssentials>> {
    return from(
      this.pgPrisma.doctorSlot.findUniqueOrThrow({
        where: {
          id,
        },
      }),
    ).pipe(
      switchMap(() => {
        return from(
          this.pgPrisma.doctorSlot.update({
            where: {
              id,
            },
            data: updateDoctorSlotDto,
            select: {
              id: true,
              slotStart: true,
              slotEnd: true,
              doctorId: true,
              duration: true,
              status: true,
            },
          }),
        );
      }),
      map((slot) => ({
        data: slot,
        message: 'Slot updated successfully',
      })),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.pgPrisma.doctorSlot.delete({
        where: {
          id,
        },
      }),
    ).pipe(map(() => ({ message: 'Slot deleted successfully' })));
  }
}
