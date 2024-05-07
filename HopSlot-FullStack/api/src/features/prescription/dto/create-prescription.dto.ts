import { createZodDto } from 'nestjs-zod/dto';
import { PrescriptionModel } from 'src/core/schemas';

const createPrescriptionDto = PrescriptionModel.omit({
  createdAt: true,
  updatedAt: true,
  id: true,
  issueDate: true,
});

export class CreatePrescriptionDto extends createZodDto(
  createPrescriptionDto,
) {}
