import { Injectable } from '@nestjs/common';
import { Observable, from, map } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { MongoPrismaService } from 'src/global/database/mongo-prisma.service';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { EssentialLookUpResponse } from './types/look-response';
import { SymptomEvidence } from 'db/mongo';
import { DateExtractor } from 'src/utils/date-extractor.util';
import { DoctorSlotEssentials } from 'src/core/types/model_essentials.types';

@Injectable()
export class AppointmentLookupService {
  constructor(
    private readonly mdPrisma: MongoPrismaService,
    private readonly pgPrisma: PostgresPrismaService,
  ) {}

  findHospitals(): Observable<APIResponse<EssentialLookUpResponse[]>> {
    return from(this.pgPrisma.hospital.findMany()).pipe(
      map((hospitals) => {
        return {
          data: hospitals.map((hospital) => {
            return {
              id: hospital.id,
              name: hospital.name,
            };
          }),
          message: 'Hospitals fetched successfully',
        };
      }),
    );
  }

  findDoctors(
    hospitalId: string,
  ): Observable<APIResponse<EssentialLookUpResponse[]>> {
    return from(
      this.pgPrisma.doctor.findMany({
        where: { hospitalId },
        include: { user: true },
      }),
    ).pipe(
      map((doctors) => {
        return {
          data: doctors.map((doctor) => {
            return {
              id: doctor.userId,
              name: doctor.user.firstName + ' ' + doctor.user.lastName,
            };
          }),
          message: 'Doctors fetched successfully',
        };
      }),
    );
  }

  searchQuestions(
    query: string,
  ): Observable<
    APIResponse<
      Omit<
        SymptomEvidence,
        | 'defaultValueId'
        | 'possibleValueIds'
        | 'AntecedentConditionsId'
        | 'SymptomConditionsId'
      >[]
    >
  > {
    return from(
      this.mdPrisma.symptomEvidence.findMany({
        where: {
          question: {
            contains: query,
            mode: 'insensitive',
          },
        },
        select: {
          id: true,
          name: true,
          dataType: true,
          codeQuestion: true,
          defaultValue: {
            select: {
              id: true,
              name: true,
              value: true,
              forType: true,
            },
          },
          isActecedent: true,
          question: true,
          possibleValues: {
            select: {
              id: true,
              name: true,
              value: true,
              forType: true,
            },
          },
        },
      }),
    ).pipe(
      map((symptoms) => {
        return {
          data: symptoms,
          message: 'Symptoms fetched successfully',
        };
      }),
    );
  }

  slotLookup(
    doctorId: string,
    date: Date,
  ): Observable<APIResponse<DoctorSlotEssentials[]>> {
    const day = DateExtractor.extractDay(date);
    console.log({ day, date, timesZoe: date.getTimezoneOffset() });
    return from(
      this.pgPrisma.doctorSlot.findMany({
        where: {
          doctorId,
          status: 'ACTIVE',
          slotStartTime: {
            lte: date,
          },
          forDay: {
            has: day,
          },
        },
        select: {
          id: true,
          slotStartTime: true,
          slotEndTime: true,
          durationOfPerVisit: true,
          status: true,
          doctorId: true,
          forDay: true,
        },
      }),
    ).pipe(
      map((slots) => {
        return {
          data: slots,
          message: 'Slots fetched successfully',
        };
      }),
    );
  }
}
