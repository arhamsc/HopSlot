import { Reflector } from '@nestjs/core';
import { Role } from 'db/postgres';

export const Roles = Reflector.createDecorator<Role[]>();
