import { User, Hospital } from '@prisma/postgres/client';
import { Doctor, Role } from 'db/postgres';

export interface UserEssentials
  extends Pick<User, 'id' | 'email' | 'username' | 'role'> {
  roles?: Role[];
}

export interface HospitalEssentials
  extends Omit<Hospital, 'createdAt' | 'updatedAt'> {}

export interface DoctorEssentials
  extends Omit<Doctor, 'createdAt' | 'updatedAt'> {}
