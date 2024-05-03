import { OmitType, PartialType } from '@nestjs/mapped-types';
import { CreateDoctorDto } from './create-doctor.dto';
import { DoctorDto } from 'src/core/schemas';

export class UpdateDoctorDto extends PartialType(
  OmitType(DoctorDto, ['userId', 'updatedAt', 'createdAt']),
) {}
