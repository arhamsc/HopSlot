import { HospitalModel } from 'src/core/schemas';
import { createZodDto } from 'nestjs-zod';

const updateHospital = HospitalModel.partial();

export class UpdateHospitalDto extends createZodDto(updateHospital) {}
