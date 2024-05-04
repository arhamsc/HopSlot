import { OmitType } from '@nestjs/mapped-types';
import { DoctorSlotDto } from 'src/core/schemas';

export class CreateDoctorSlotDto extends OmitType(DoctorSlotDto, [
  'createdAt',
  'createdAt',
  'id',
]) {}
