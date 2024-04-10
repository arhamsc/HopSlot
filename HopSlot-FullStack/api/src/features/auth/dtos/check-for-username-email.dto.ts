import { createZodDto } from 'nestjs-zod/dto';
import { z } from 'nestjs-zod/z';

const schema = z
  .object({
    username: z.string().min(5).max(10).optional(),
    email: z.string().email().optional(),
  })
  .refine(
    (data) => {
      return !(!data.email && !data.username);
    },
    { message: 'Please provide either username or email.' },
  );

export class CheckForUsernameEmailDto extends createZodDto(schema) {}
