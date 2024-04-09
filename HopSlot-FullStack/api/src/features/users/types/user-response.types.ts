import { User } from 'db/postgres';

export interface UserEssentialsResponse
  extends Omit<
    User,
    'password' | 'refreshTokenHash' | 'createdAt' | 'updatedAt'
  > {}
