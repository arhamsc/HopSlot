import { User } from '@prisma/postgres/client';

export interface UserEssentials
  extends Pick<User, 'id' | 'email' | 'username' | 'role'> {}
