import { createZodDto } from 'nestjs-zod/dto';
import { z } from 'nestjs-zod/z';

const schema = z.object({
  identity: z.string(),
  password: z.string(),
});

export class LoginDto extends createZodDto(schema) {}
