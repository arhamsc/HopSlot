import { User, Hospital } from '@prisma/postgres/client';
import { Role } from 'db/postgres';

export interface UserEssentials
  extends Pick<User, 'id' | 'email' | 'username' | 'role'> {
  roles?: Role[];
}

export interface HospitalEssentials
  extends Omit<Hospital, 'createdAt' | 'updatedAt'> {}
