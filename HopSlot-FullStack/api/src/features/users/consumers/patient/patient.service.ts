import { Injectable } from '@nestjs/common';
import { CreatePatientDto } from './dto/create-patient.dto';
import { UpdatePatientDto } from './dto/update-patient.dto';
import { Observable, from, map, switchMap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { PatientEssential } from 'src/core/types/model_essentials.types';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';

@Injectable()
export class PatientService {
  constructor(private readonly pgPrisma: PostgresPrismaService) {}

  create(
    createPatientDto: CreatePatientDto,
  ): Observable<APIResponse<PatientEssential>> {
    return from(
      this.pgPrisma.user.findUniqueOrThrow({
        where: {
          id: createPatientDto.userId,
        },
      }),
    ).pipe(
      switchMap(() => {
        return from(
          this.pgPrisma.patient.create({
            data: {
              user: {
                connect: {
                  id: createPatientDto.userId,
                },
              },
              age: createPatientDto.age,
            },
            select: {
              userId: true,
              age: true,
              appointmentId: true,
            },
          }),
        );
      }),
      map((patient) => {
        return {
          data: patient,
          message: 'Patient created successfully',
        };
      }),
    );
  }

  findAll(): Observable<APIResponse<PatientEssential[]>> {
    return from(this.pgPrisma.patient.findMany()).pipe(
      map((patients) => {
        return {
          data: patients,
          message: 'Patients fetched successfully',
        };
      }),
    );
  }

  findOne(id: string): Observable<APIResponse<PatientEssential>> {
    return from(
      this.pgPrisma.patient.findFirstOrThrow({
        where: {
          userId: id,
        },
      }),
    ).pipe(
      map((patient) => {
        return {
          data: patient,
          message: 'Patient fetched successfully',
        };
      }),
    );
  }

  update(
    id: string,
    updatePatientDto: UpdatePatientDto,
  ): Observable<APIResponse<PatientEssential>> {
    return from(
      this.pgPrisma.patient.update({
        where: {
          userId: id,
        },
        data: {
          age: updatePatientDto.age,
          appointmentId: updatePatientDto.appointmentId,
        },
        select: {
          userId: true,
          age: true,
          appointmentId: true,
        },
      }),
    ).pipe(
      map((patient) => {
        return {
          data: patient,
          message: 'Patient updated successfully',
        };
      }),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.pgPrisma.patient.delete({
        where: {
          userId: id,
        },
      }),
    ).pipe(
      map(() => {
        return {
          message: 'Patient deleted successfully',
        };
      }),
    );
  }
}
