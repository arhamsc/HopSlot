import { DoctorModel, PatientModel, UserModel } from 'src/core/schemas';
import { Role } from '@prisma-postgres/client';
import { createZodDto } from 'nestjs-zod/dto';
import { ZodValidationException } from 'nestjs-zod';

const docMod = DoctorModel.omit({
  updatedAt: true,
  createdAt: true,
  noOfPatientsConsulted: true,
  lastClockIn: true,
  userId: true,
});

const patMod = PatientModel.omit({
  updatedAt: true,
  createdAt: true,
});

const signUpSchema = UserModel.merge(docMod.deepPartial())
  .merge(patMod.deepPartial())
  .refine(
    (data) => {
      try {
        if (data.role === Role.ADMIN || data.role === Role.HOSP_ADMIN) {
          return true;
        } else if (data.role === Role.DOCTOR) {
          return docMod.parse(data);
        } else if (data.role === Role.PATIENT) {
          return patMod.parse(data);
        } else {
          return false;
        }
      } catch (error) {
        throw new ZodValidationException(error);
      }
    },
    (data) => ({
      message: `Please provide the required data for ${data.role}.`,
    }),
  );

export class SignUpDto extends createZodDto(signUpSchema) {}
