import { User, Hospital } from '@prisma/postgres/client';

export interface UserEssentials
  extends Pick<User, 'id' | 'email' | 'username' | 'role'> {}

export interface HospitalEssentials
  extends Omit<Hospital, 'createdAt' | 'updatedAt'> {}
