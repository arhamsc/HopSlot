import { UseGuards, applyDecorators } from '@nestjs/common';
import { Roles } from './roles.decorator';
import { Role } from 'db/postgres';
import { RoleGuard } from '../guards/role/role.guard';

export const ForAdmin = () =>
  applyDecorators(Roles([Role.ADMIN]), UseGuards(RoleGuard));
