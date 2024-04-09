import { createZodDto } from 'nestjs-zod/dto';
import { z } from 'nestjs-zod/z';
import { UserModel } from 'src/core/schemas';

const createAdminSchema = UserModel.extend({
  secretAdminKey: z.string(),
  password: z
    .password()
    .atLeastOne('digit')
    .atLeastOne('lowercase')
    .atLeastOne('uppercase')
    .min(8)
    .max(100),
});

export class CreateAdminDto extends createZodDto(createAdminSchema) {}
