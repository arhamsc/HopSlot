import { createZodDto } from 'nestjs-zod';
import { HospitalModel } from 'src/core/schemas';

const createHospital = HospitalModel.omit({
  id: true,
  updatedAt: true,
  createdAt: true,
  adminId: true,
});

export class CreateHospitalDto extends createZodDto(createHospital) {}
