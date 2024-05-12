import { Injectable } from '@nestjs/common';
import { Observable, from, map, switchMap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { DocStats } from '../doc-types';
import { AppointmentEssentials } from 'src/core/types/model_essentials.types';

@Injectable()
export class DocInfoService {
  constructor(private readonly pgPrisma: PostgresPrismaService) {}

  getMyStats(doctorId: string): Observable<APIResponse<DocStats>> {
    return from(
      this.pgPrisma.appointment.count({
        where: {
          doctorId,
        },
      }),
    ).pipe(
      switchMap((totalAppointments) => {
        return from(
          this.pgPrisma.doctor.findUniqueOrThrow({
            where: {
              userId: doctorId,
            },
            include: {
              Appointment: true,
            },
          }),
        ).pipe(
          map((doctor) => {
            const patientIds = doctor?.Appointment.map((a) => a.patientId);
            const uniquePats = [...new Set(patientIds)];
            return {
              totalAppointments,
              totalPatients: uniquePats.length,
            };
          }),
        );
      }),
      switchMap((stats) =>
        from(this.pgPrisma.prescription.count({ where: { doctorId } })).pipe(
          map((totalPrescriptions) => ({ ...stats, totalPrescriptions })),
        ),
      ),
      map((stats) => {
        return {
          data: {
            totalAppointments: stats.totalAppointments,
            totalPatients: stats.totalPatients,
            totalPrescriptions: stats.totalPrescriptions,
          },
          message: 'Stats fetched successfully',
        };
      }),
    );
  }

  getTodaysAppointments(
    doctorId: string,
  ): Observable<APIResponse<AppointmentEssentials[]>> {
    const startDate = new Date();
    //TODO: Remove this line
    startDate.setDate(13);
    startDate.setUTCHours(0, 0, 0, 0);
    const endDate = new Date();
    //TODO: Remove this line
    endDate.setDate(13);
    endDate.setUTCHours(23, 59, 59, 999);
    // endDate.setHours(23, 59, 59, 999);
    console.log({ startDate, endDate });
    return from(
      this.pgPrisma.appointment.findMany({
        where: {
          doctorId,
          appointmentStart: {
            gte: startDate,
            lt: endDate,
          },
        },
        select: {
          id: true,
          appointmentStart: true,
          additionalDelay: true,
          patientId: true,
          appointmentSlotId: true,
          appointmentStartDelay: true,
          doctorId: true,
          hospitalId: true,
          severity: true,
          status: true,
          appointmentSlot: {
            select: {
              id: true,
              durationOfPerVisit: true,
              forDay: true,
              slotEndTime: true,
              slotStartTime: true,
            },
          },
          patient: {
            select: {
              id: true,
              firstName: true,
              lastName: true,
            },
          },
        },
        orderBy: {
          appointmentStart: 'asc',
        },
      }),
    ).pipe(
      map((appointments) => {
        return {
          data: appointments,
          message: 'Todays appointments fetched successfully',
        };
      }),
    );
  }

  fetchAppointmentHistory(
    doctorId: string,
  ): Observable<APIResponse<AppointmentEssentials[]>> {
    return from(
      this.pgPrisma.appointment.findMany({
        where: {
          doctorId,
          appointmentStart: {
            lt: new Date(),
          },
        },
        select: {
          id: true,
          appointmentStart: true,
          additionalDelay: true,
          patientId: true,
          appointmentSlotId: true,
          appointmentStartDelay: true,
          doctorId: true,
          hospitalId: true,
          severity: true,
          status: true,
          appointmentSlot: {
            select: {
              id: true,
              durationOfPerVisit: true,
              forDay: true,
              slotEndTime: true,
              slotStartTime: true,
            },
          },
        },
      }),
    ).pipe(
      map((appointments) => {
        return {
          data: appointments,
          message: 'Appointment history fetched successfully',
        };
      }),
    );
  }
}
