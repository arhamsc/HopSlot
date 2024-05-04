import { OmitType, PartialType } from '@nestjs/mapped-types';
import { AppointmentDto } from 'src/core/schemas';

export class UpdateAppointmentDto extends PartialType(
  OmitType(AppointmentDto, ['createdAt', 'updatedAt']),
) {}
