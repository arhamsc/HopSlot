import { createZodDto } from 'nestjs-zod';

import { DoctorSlotModel } from 'src/core/schemas';

const updateDoctorSlot = DoctorSlotModel.omit({
  updatedAt: true,
  createdAt: true,
  doctorId: true,
}).partial();

export class UpdateDoctorSlotDto extends createZodDto(updateDoctorSlot) {}
