import { createZodDto } from 'nestjs-zod/dto';
import { z } from 'nestjs-zod/z';

const schema = z
  .object({
    username: z.string().optional(),
    email: z.string().email().optional(),
    password: z.string(),
  })
  .refine(
    (data) => {
      return data.email || data.username;
    },
    {
      message: 'Please provide either username or email.',
      path: ['username', 'email'],
    },
  );

export class LoginDto extends createZodDto(schema) {}
