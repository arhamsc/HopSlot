import { createZodDto } from 'nestjs-zod';
import { DoctorModel } from 'src/core/schemas';

const createDoctor = DoctorModel.omit({
  updatedAt: true,
  createdAt: true,
  noOfPatientsConsulted: true,
  lastClockIn: true,
});

export class CreateDoctorDto extends createZodDto(createDoctor) {}
