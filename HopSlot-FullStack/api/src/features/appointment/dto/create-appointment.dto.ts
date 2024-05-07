import { createZodDto } from 'nestjs-zod';
import { z } from 'nestjs-zod/z';
import { AppointmentModel, SymptomModel } from 'src/core/schemas';

const createAppointment = AppointmentModel.omit({
  id: true,
  updatedAt: true,
  createdAt: true,
  status: true,
  patientId: true,
}).extend({
  symptoms: SymptomModel.omit({
    id: true,
  })
    .array()
    .min(1),
  date: z.string().datetime(),
});

export class CreateAppointmentDto extends createZodDto(createAppointment) {}
