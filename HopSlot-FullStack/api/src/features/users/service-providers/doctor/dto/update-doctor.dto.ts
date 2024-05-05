import { DoctorModel } from 'src/core/schemas';
import { createZodDto } from 'nestjs-zod';

const updateDoctor = DoctorModel.omit({
  userId: true,
  updatedAt: true,
  createdAt: true,
}).partial();

export class UpdateDoctorDto extends createZodDto(updateDoctor) {}
