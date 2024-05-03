import { Injectable, Logger, NotFoundException } from '@nestjs/common';
import { CreateHospitalDto } from './dto/create-hospital.dto';
import { UpdateHospitalDto } from './dto/update-hospital.dto';
import { Observable, from, map, switchMap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { HospitalEssentials } from 'src/core/types/model_essentials.types';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';

@Injectable()
export class HospitalService {
  private readonly logger = new Logger(HospitalService.name);

  constructor(private readonly prismaPG: PostgresPrismaService) {}

  create(
    createHospitalDto: CreateHospitalDto,
    adminId: string,
  ): Observable<APIResponse<HospitalEssentials>> {
    const dto = createHospitalDto;

    return from(
      this.prismaPG.hospital.create({
        data: { ...dto, adminId },
        select: {
          id: true,
          name: true,
          address: true,
          adminId: true,
          email: true,
          phone: true,
          website: true,
        },
      }),
    ).pipe(
      map((hospital) => {
        return {
          data: hospital,
          message: 'Hospital created successfully',
        };
      }),
    );
  }

  findMyHospitals(
    adminId: string,
  ): Observable<APIResponse<HospitalEssentials[]>> {
    return from(
      this.prismaPG.hospital.findMany({
        where: {
          adminId,
        },
        select: {
          id: true,
          name: true,
          address: true,
          adminId: true,
          email: true,
          phone: true,
          website: true,
        },
      }),
    ).pipe(
      map((hospitals) => {
        return {
          data: hospitals,
          message: 'Hospitals fetched successfully',
        };
      }),
    );
  }

  findAll(): Observable<APIResponse<HospitalEssentials[]>> {
    return from(
      this.prismaPG.hospital.findMany({
        select: {
          id: true,
          name: true,
          address: true,
          adminId: true,
          email: true,
          phone: true,
          website: true,
          admin: {
            select: {
              id: true,
              email: true,
              firstName: true,
              lastName: true,
            },
          },
        },
      }),
    ).pipe(
      map((hospitals) => {
        return {
          data: hospitals,
          message: 'Hospitals fetched successfully',
        };
      }),
    );
  }

  findOne(id: string): Observable<APIResponse<HospitalEssentials>> {
    return from(
      this.prismaPG.hospital.findUnique({
        where: {
          id,
        },
        select: {
          id: true,
          name: true,
          address: true,
          adminId: true,
          email: true,
          phone: true,
          website: true,
          admin: {
            select: {
              id: true,
              email: true,
              firstName: true,
              lastName: true,
            },
          },
        },
      }),
    ).pipe(
      map((hospital) => {
        if (!hospital) throw new NotFoundException('Hospital not found');
        return {
          data: hospital,
          message: 'Hospital fetched successfully',
        };
      }),
    );
  }

  update(
    id: string,
    updateHospitalDto: UpdateHospitalDto,
  ): Observable<APIResponse<HospitalEssentials>> {
    return from(
      this.prismaPG.hospital.findUniqueOrThrow({
        where: {
          id,
        },
      }),
    ).pipe(
      switchMap(() => {
        return from(
          this.prismaPG.hospital.update({
            where: {
              id,
            },
            data: updateHospitalDto,
            select: {
              id: true,
              name: true,
              address: true,
              adminId: true,
              email: true,
              phone: true,
              website: true,
            },
          }),
        );
      }),
      map((hospital) => {
        return {
          data: hospital,
          message: 'Hospital updated successfully',
        };
      }),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.prismaPG.hospital.delete({
        where: {
          id,
        },
      }),
    ).pipe(
      map(() => {
        return {
          message: 'Hospital deleted successfully',
        };
      }),
    );
  }
}
