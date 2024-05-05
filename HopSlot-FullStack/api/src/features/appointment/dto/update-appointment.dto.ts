import { createZodDto } from 'nestjs-zod';
import { AppointmentModel } from 'src/core/schemas';

const updateAppointment = AppointmentModel.omit({
  createdAt: true,
  updatedAt: true,
}).partial();

export class UpdateAppointmentDto extends createZodDto(updateAppointment) {}
