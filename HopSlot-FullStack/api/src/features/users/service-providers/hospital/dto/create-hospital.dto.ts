import { OmitType } from '@nestjs/mapped-types';
import { HospitalDto } from 'src/core/schemas';

export class CreateHospitalDto extends OmitType(HospitalDto, [
  'id',
  'createdAt',
  'updatedAt',
  'adminId',
]) {}
