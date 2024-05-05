import { createZodDto } from 'nestjs-zod';
import { DoctorSlotModel } from 'src/core/schemas';

const createDoctorSlot = DoctorSlotModel.omit({
  id: true,
  doctorId: true,
  updatedAt: true,
  createdAt: true,
});

export class CreateDoctorSlotDto extends createZodDto(createDoctorSlot) {}
