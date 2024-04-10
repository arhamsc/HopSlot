import { ArgonOptions } from 'src/core/types/argon.types';

export const argonOptions = (): ArgonOptions => ({
  argon: {
    at: {
      salt: Buffer.from(process.env.JWT_AT_SALT ?? '', 'utf-8'),
      secret: Buffer.from(process.env.JWT_AT_SECRET ?? '', 'utf-8'),
    },
    rt: {
      salt: Buffer.from(process.env.JWT_RT_SALT ?? '', 'utf-8'),
      secret: Buffer.from(process.env.JWT_RT_SECRET ?? '', 'utf-8'),
    },
    common: {
      salt: Buffer.from(process.env.COMMON_SALT ?? '', 'utf-8'),
      secret: Buffer.from(process.env.COMMON_SECRET ?? '', 'utf-8'),
    },
  },
});
