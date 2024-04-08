import { ArgonOptions } from 'src/types/argon.types';

export const argonOptions = (): ArgonOptions => ({
  argon: {
    salt: Buffer.from(process.env.HASH_SALT ?? '', 'utf-8'),
    secret: Buffer.from(process.env.HASH_SECRET ?? '', 'utf-8'),
  },
});
