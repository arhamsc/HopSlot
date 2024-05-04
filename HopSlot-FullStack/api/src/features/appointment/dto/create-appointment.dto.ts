import { OmitType } from '@nestjs/mapped-types';
import { AppointmentDto } from 'src/core/schemas';

export class CreateAppointmentDto extends OmitType(AppointmentDto, [
  'createdAt',
  'updatedAt',
  'status',
]) {}
