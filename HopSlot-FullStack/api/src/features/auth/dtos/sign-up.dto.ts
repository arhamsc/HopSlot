import { DoctorModel, PatientModel, UserModel } from 'src/core/schemas';
import { Role } from '@prisma/postgres/client';
import { createZodDto } from 'nestjs-zod/dto';
import { ZodValidationException } from 'nestjs-zod';

const signUpSchema = UserModel.merge(
  DoctorModel.omit({ updatedAt: true, createdAt: true }).deepPartial(),
)
  .merge(PatientModel.omit({ updatedAt: true, createdAt: true }).deepPartial())
  .refine(
    (data) => {
      try {
        if (data.role === Role.ADMIN || data.role === Role.HOSP_ADMIN) {
          return true;
        } else if (data.role === Role.DOCTOR) {
          return DoctorModel.parse(data);
        } else if (data.role === Role.PATIENT) {
          return PatientModel.parse(data);
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
