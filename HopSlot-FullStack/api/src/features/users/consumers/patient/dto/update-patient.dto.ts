import { PatientModel } from 'src/core/schemas';
import { createZodDto } from 'nestjs-zod';

const updatePatientDto = PatientModel.partial();

export class UpdatePatientDto extends createZodDto(updatePatientDto) {}
