import { User, Hospital } from '@prisma-postgres/client';
import {
  Appointment,
  Doctor,
  DoctorSlot,
  Patient,
  Role,
  Prescription,
  Report,
} from 'db/postgres';

export interface UserEssentials
  extends Pick<
    User,
    'id' | 'email' | 'username' | 'role' | 'firstName' | 'lastName' | 'fcmToken'
  > {
  roles?: Role[];
}

export interface HospitalEssentials
  extends Omit<Hospital, 'createdAt' | 'updatedAt'> {}

export interface PatientEssential
  extends Pick<Patient, 'userId' | 'age' | 'appointmentId'> {}

export interface DoctorEssentials
  extends Omit<Doctor, 'createdAt' | 'updatedAt'> {}

export interface AppointmentEssentials
  extends Omit<Appointment, 'createdAt' | 'updatedAt'> {}

export interface DoctorSlotEssentials
  extends Omit<DoctorSlot, 'createdAt' | 'updatedAt'> {}

export interface PrescriptionEssentials
  extends Omit<Prescription, 'createdAt' | 'updatedAt'> {}

export interface ReportEssentials
  extends Omit<Report, 'createdAt' | 'updatedAt'> {}

export interface AppointmentDjangoEssentials {
  appointmentId: string;
  symptoms: {
    name: string;
    description: string;
    type: string;
    values: string[];
  }[];
}

export interface PredictionResponse {
  appointmentId: string;
  pathology: string;
  severity: number;
}
