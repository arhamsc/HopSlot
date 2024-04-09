import { PartialType, PickType } from '@nestjs/mapped-types';
import { CreateAdminDto } from './create-admin.dto';

export class UpdateAdminDto extends PickType(CreateAdminDto, [
  'email',
  'firstName',
  'lastName',
  'refreshTokenHash',
  'employeeId',
]) {}
