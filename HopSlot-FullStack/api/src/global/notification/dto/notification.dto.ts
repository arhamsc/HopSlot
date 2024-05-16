import { Role } from 'db/postgres';
import { createZodDto } from 'nestjs-zod';
import { z } from 'nestjs-zod/z';
import { NotificationCodes } from 'src/enums/notification-codes.enum';

const notificationDto = z.object({
  id: z.number().int().optional(),
  title: z.string(),
  body: z.string(),
  data: z.object({
    code: z.nativeEnum(NotificationCodes),
    fromId: z.string().uuid(),
    fromRole: z.nativeEnum(Role),
    message: z.string().min(5),
    appointmentId: z.string().uuid().optional(),
  }),
});

export class NotificationDto extends createZodDto(notificationDto) {}
