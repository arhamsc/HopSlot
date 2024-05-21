import { Injectable } from '@nestjs/common';
import { CreatePrescriptionDto } from './dto/create-prescription.dto';
import { UpdatePrescriptionDto } from './dto/update-prescription.dto';
import { PostgresPrismaService } from 'src/global/database/postgres-prisma.service';
import { Observable, from, map, switchMap, tap } from 'rxjs';
import { APIResponse } from 'src/core/types/api-response.type';
import { AppointmentStatus, Prescription, Role } from 'db/postgres';
import { File } from '@nest-lab/fastify-multer';
import { CloudinaryService } from 'src/dynamic-modules/cloudinary/cloudinary.service';
import { PrescriptionEssentials } from 'src/core/types/model_essentials.types';

// TODO: Report Management

@Injectable()
export class PrescriptionService {
  constructor(
    private readonly pgPrisma: PostgresPrismaService,
    private readonly cloudinaryService: CloudinaryService,
  ) {}

  create(
    createPrescriptionDto: CreatePrescriptionDto,
    file?: File,
  ): Observable<APIResponse<Prescription>> {
    return from(
      this.pgPrisma.appointment.findFirstOrThrow({
        where: {
          id: createPrescriptionDto.appointmentId,
          patientId: createPrescriptionDto.patientId,
          doctorId: createPrescriptionDto.doctorId,
          status: { notIn: ['CANCELLED', 'COMPLETED'] },
        },
      }),
    ).pipe(
      switchMap(async () => {
        if (!file) {
          return null;
        }
        return await this.cloudinaryService.uploadFile(file, 'reports');
      }),
      switchMap((cloudinaryRes) => {
        return from(
          this.pgPrisma.prescription.create({
            data: {
              body: createPrescriptionDto.body,
              docSign: createPrescriptionDto.docSign,
              issueDate: new Date(),
              otherNotes: createPrescriptionDto.otherNotes,
              patient: {
                connect: {
                  userId: createPrescriptionDto.patientId,
                },
              },
              doctor: {
                connect: {
                  userId: createPrescriptionDto.doctorId,
                },
              },
              appointment: {
                connect: {
                  id: createPrescriptionDto.appointmentId,
                },
              },
              report: {
                create: {
                  issueDate: new Date(),
                  reportPublicId: cloudinaryRes?.public_id,
                  reportSecureUrl: cloudinaryRes?.secure_url,
                  signedBy: createPrescriptionDto.docSign,
                  doctorId: createPrescriptionDto.doctorId,
                  patientId: createPrescriptionDto.patientId,
                },
              },
            },
          }),
        );
      }),
      tap(async () => {
        await this.pgPrisma.appointment.update({
          where: { id: createPrescriptionDto.appointmentId },
          data: {
            status: AppointmentStatus.COMPLETED,
          },
        });
      }),
      map((prescription) => ({
        message: 'Prescription created',
        data: prescription,
      })),
    );
  }

  findAll(): Observable<APIResponse<Prescription[]>> {
    return from(this.pgPrisma.prescription.findMany()).pipe(
      map((prescriptions) => ({
        message: 'Prescriptions fetched',
        data: prescriptions,
      })),
    );
  }

  findPrescriptionsByAppointmentId(
    appointmentId: string,
  ): Observable<APIResponse<PrescriptionEssentials[]>> {
    return from(
      this.pgPrisma.prescription.findMany({
        where: {
          appointmentId,
        },
        select: {
          id: true,
          body: true,
          appointmentId: true,
          issueDate: true,
          docSign: true,
          doctorId: true,
          otherNotes: true,
          patientId: true,
          report: {
            select: {
              reportPublicId: true,
              reportSecureUrl: true,
              signedBy: true,
              id: true,
              issueDate: true,
              doctorId: true,
              patientId: true,
              prescriptionId: true,
            },
          },
        },
      }),
    ).pipe(
      map((prescriptions) => ({
        message: 'Prescriptions fetched',
        data: prescriptions,
      })),
    );
  }

  findAllMyPrescriptions(
    userId: string,
    role: Role,
  ): Observable<APIResponse<PrescriptionEssentials[]>> {
    return from(
      this.pgPrisma.prescription.findMany({
        where: {
          [role === Role.DOCTOR ? 'doctorId' : 'patientId']: userId,
        },
        select: {
          id: true,
          body: true,
          appointmentId: true,
          issueDate: true,
          docSign: true,
          doctorId: true,
          otherNotes: true,
          patientId: true,
          report: {
            select: {
              reportPublicId: true,
              reportSecureUrl: true,
              signedBy: true,
              id: true,
              issueDate: true,
              doctorId: true,
              patientId: true,
              prescriptionId: true,
            },
          },
        },
      }),
    ).pipe(
      map((prescriptions) => ({
        message: 'Prescriptions fetched',
        data: prescriptions,
      })),
    );
  }

  findOne(id: string): Observable<APIResponse<PrescriptionEssentials>> {
    return from(
      this.pgPrisma.prescription.findUniqueOrThrow({
        where: { id },
        select: {
          id: true,
          body: true,
          appointmentId: true,
          issueDate: true,
          docSign: true,
          doctorId: true,
          otherNotes: true,
          patientId: true,
          report: {
            select: {
              reportPublicId: true,
              reportSecureUrl: true,
              signedBy: true,
              id: true,
              issueDate: true,
              doctorId: true,
              patientId: true,
              prescriptionId: true,
            },
          },
        },
      }),
    ).pipe(
      map((prescription) => ({
        message: 'Prescription fetched',
        data: prescription,
      })),
    );
  }

  update(
    id: string,
    updatePrescriptionDto: UpdatePrescriptionDto,
  ): Observable<APIResponse<Prescription>> {
    return from(
      this.pgPrisma.prescription.update({
        where: { id },
        data: updatePrescriptionDto,
      }),
    ).pipe(
      map((prescription) => ({
        message: 'Prescription updated',
        data: prescription,
      })),
    );
  }

  remove(id: string): Observable<APIResponse> {
    return from(
      this.pgPrisma.prescription.delete({
        where: { id },
      }),
    ).pipe(
      map(() => ({
        message: 'Prescription deleted',
      })),
    );
  }
}
