import { createZodDto } from 'nestjs-zod';
import { AppointmentModel } from 'src/core/schemas';

const createAppointment = AppointmentModel.omit({
  id: true,
  updatedAt: true,
  createdAt: true,
  status: true,
  patientId: true,
});

export class CreateAppointmentDto extends createZodDto(createAppointment) {}
