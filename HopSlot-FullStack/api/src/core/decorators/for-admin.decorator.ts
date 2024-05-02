import { UseGuards, applyDecorators } from '@nestjs/common';
import { Roles } from './roles.decorator';
import { RoleGuard } from '../guards/role/role.guard';
import { Role } from 'db/postgres';

export const ForAdmin = () =>
  applyDecorators(Roles([Role.ADMIN]), UseGuards(RoleGuard));
