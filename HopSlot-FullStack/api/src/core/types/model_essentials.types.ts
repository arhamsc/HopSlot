import { User, Hospital } from '@prisma/postgres/client';
import { Appointment, Doctor, DoctorSlot, Role } from 'db/postgres';

export interface UserEssentials
  extends Pick<User, 'id' | 'email' | 'username' | 'role'> {
  roles?: Role[];
}

export interface HospitalEssentials
  extends Omit<Hospital, 'createdAt' | 'updatedAt'> {}

export interface DoctorEssentials
  extends Omit<Doctor, 'createdAt' | 'updatedAt'> {}

export interface AppointmentEssentials
  extends Omit<Appointment, 'createdAt' | 'updatedAt'> {}

export interface DoctorSlotEssentials
  extends Omit<DoctorSlot, 'createdAt' | 'updatedAt'> {}
