import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteAppointment, RelatedAppointmentModel } from "./index"

export const SymptomModel = z.object({
  id: z.string().uuid(),
  name: z.string().min(1).max(100),
  desc: z.string().min(5),
  type: z.string().min(1).max(1),
  values: z.string().array(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
  appointmentId: z.string().nullish(),
})

export class SymptomDto extends createZodDto(SymptomModel) {
}

export interface CompleteSymptom extends z.infer<typeof SymptomModel> {
  Appointment?: CompleteAppointment | null
}

/**
 * RelatedSymptomModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedSymptomModel: z.ZodSchema<CompleteSymptom> = z.lazy(() => SymptomModel.extend({
  Appointment: RelatedAppointmentModel.nullish(),
}))
