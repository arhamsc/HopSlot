import { PrescriptionModel } from 'src/core/schemas';
import { createZodDto } from 'nestjs-zod/dto';

const updatePrescriptionDto = PrescriptionModel.omit({
  createdAt: true,
  updatedAt: true,
  id: true,
}).partial();

export class UpdatePrescriptionDto extends createZodDto(
  updatePrescriptionDto,
) {}
