import { Role } from 'db/postgres';
import { RolesBuilder } from 'nest-access-control';

export const roles = new RolesBuilder();

// eslint-disable-next-line prettier/prettier
roles
  // Hospital Admin
  .grant(Role.HOSP_ADMIN)
  .createOwn(['hospital', 'doctor'])
  .readOwn(['hospital', 'doctor'])
  .updateOwn(['hospital'])
  .deleteOwn(['hospital', 'doctor'])
  // Doctor
  .grant(Role.DOCTOR)
  .create(['prescription', 'report'])
  .createOwn(['doctorSlot'])
  .readOwn([
    'doctor',
    'prescription',
    'report',
    'hospital',
    'appointment',
    'doctorSlot',
  ])
  .updateOwn(['doctor', 'report', 'appointment', 'doctorSlot'])
  .deleteOwn(['doctor', 'report', 'doctorSlot'])
  // Patient
  .grant(Role.PATIENT)
  .create(['appointment'])
  .readOwn(['appointment', 'prescription', 'report'])
  .read(['hospital', 'doctor'])
  .updateOwn(['appointment'])
  // Admin
  .grant(Role.ADMIN)
  .extend(Role.HOSP_ADMIN)
  .extend(Role.DOCTOR)
  .extend(Role.PATIENT)
  .readAny(['hospital', 'doctor', 'appointment', 'prescription', 'report'])
  .updateAny(['hospital', 'doctor', 'appointment', 'prescription', 'report'])
  .deleteAny(['hospital', 'doctor', 'appointment', 'prescription', 'report']);
