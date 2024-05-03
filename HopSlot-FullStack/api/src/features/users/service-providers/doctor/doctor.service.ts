import { Injectable } from '@nestjs/common';
import { CreateDoctorDto } from './dto/create-doctor.dto';
import { UpdateDoctorDto } from './dto/update-doctor.dto';
import { Observable, from, map, switchMap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { DoctorEssentials } from 'src/core/types/model_essentials.types';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';

@Injectable()
export class DoctorService {
  constructor(private readonly prismaPG: PostgresPrismaService) {}

  create(
    createDoctorDto: CreateDoctorDto,
    userId: string,
  ): Observable<APIResponse<DoctorEssentials>> {
    return from(
      this.prismaPG.user.findUniqueOrThrow({
        where: {
          id: userId,
        },
      }),
    ).pipe(
      switchMap(() =>
        from(
          this.prismaPG.doctor.create({
            data: {
              hospital: {
                connect: {
                  id: createDoctorDto.hospitalId ?? '',
                },
              },
              user: {
                connect: {
                  id: userId,
                },
              },
              cabinNumber: createDoctorDto.cabinNumber!,
              cabinAlt: createDoctorDto.cabinAlt!,
              cabinFloor: createDoctorDto.cabinFloor!,
              cabinLat: createDoctorDto.cabinLat!,
              cabinLng: createDoctorDto.cabinLng!,
              noOfPatientsConsulted: 0,
            },
            select: {
              userId: true,
              cabinNumber: true,
              cabinFloor: true,
              cabinLat: true,
              cabinLng: true,
              cabinAlt: true,
              noOfPatientsConsulted: true,
              createdAt: true,
              updatedAt: true,
              hospitalId: true,
              lastClockIn: true,
            },
          }),
        ),
      ),
      map((doctor) => ({
        data: doctor,
        message: 'Doctor created successfully',
      })),
    );
  }

  findAll(): Observable<APIResponse<DoctorEssentials[]>> {
    return from(
      this.prismaPG.doctor.findMany({
        select: {
          userId: true,
          cabinNumber: true,
          cabinFloor: true,
          cabinLat: true,
          cabinLng: true,
          cabinAlt: true,
          noOfPatientsConsulted: true,
          createdAt: true,
          updatedAt: true,
          hospitalId: true,
          lastClockIn: true,
        },
      }),
    ).pipe(map((doctors) => ({ data: doctors, message: 'Doctors fetched' })));
  }

  findOne(id: string): Observable<APIResponse<DoctorEssentials>> {
    return from(
      this.prismaPG.doctor.findUniqueOrThrow({
        where: {
          userId: id,
        },
        select: {
          userId: true,
          cabinNumber: true,
          cabinFloor: true,
          cabinLat: true,
          cabinLng: true,
          cabinAlt: true,
          noOfPatientsConsulted: true,
          createdAt: true,
          updatedAt: true,
          hospitalId: true,
          lastClockIn: true,
        },
      }),
    ).pipe(map((doctor) => ({ data: doctor, message: 'Doctor fetched' })));
  }

  findDoctorsByHospitalId(
    hospitalId: string,
  ): Observable<APIResponse<DoctorEssentials[]>> {
    return from(
      this.prismaPG.doctor.findMany({
        where: {
          hospitalId,
        },
        select: {
          userId: true,
          cabinNumber: true,
          cabinFloor: true,
          cabinLat: true,
          cabinLng: true,
          cabinAlt: true,
          noOfPatientsConsulted: true,
          createdAt: true,
          updatedAt: true,
          hospitalId: true,
          lastClockIn: true,
        },
      }),
    ).pipe(map((doctors) => ({ data: doctors, message: 'Doctors fetched' })));
  }

  update(
    id: string,
    updateDoctorDto: UpdateDoctorDto,
  ): Observable<APIResponse<DoctorEssentials>> {
    return from(
      this.prismaPG.doctor.findUniqueOrThrow({
        where: {
          userId: id,
        },
      }),
    ).pipe(
      switchMap(() =>
        from(
          this.prismaPG.doctor.update({
            where: {
              userId: id,
            },
            data: updateDoctorDto,
            select: {
              userId: true,
              cabinNumber: true,
              cabinFloor: true,
              cabinLat: true,
              cabinLng: true,
              cabinAlt: true,
              noOfPatientsConsulted: true,
              createdAt: true,
              updatedAt: true,
              hospitalId: true,
              lastClockIn: true,
            },
          }),
        ),
      ),
      map((doctor) => ({
        data: doctor,
        message: 'Doctor updated successfully',
      })),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.prismaPG.doctor.delete({
        where: {
          userId: id,
        },
      }),
    ).pipe(map(() => ({ message: 'Doctor deleted successfully' })));
  }
}
