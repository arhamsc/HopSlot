import { OmitType, PartialType } from '@nestjs/mapped-types';

import { DoctorSlotDto } from 'src/core/schemas';

export class UpdateDoctorSlotDto extends PartialType(
  OmitType(DoctorSlotDto, ['createdAt', 'createdAt']),
) {}
