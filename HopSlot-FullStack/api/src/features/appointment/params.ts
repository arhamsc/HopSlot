import { Role } from "db/postgres";

export interface FindAllMyAppointmentsParams {
  userId: string;
  forEntity: Role;
  type?: 'upcoming' | 'past';
}
