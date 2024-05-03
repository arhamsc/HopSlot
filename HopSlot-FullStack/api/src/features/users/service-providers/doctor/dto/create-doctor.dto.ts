import { OmitType } from '@nestjs/mapped-types';
import { DoctorDto } from 'src/core/schemas';

export class CreateDoctorDto extends OmitType(DoctorDto, [
  'updatedAt',
  'createdAt',
  'noOfPatientsConsulted',
  'lastClockIn',
]) {}
