import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteUser, RelatedUserModel, CompleteAppointment, RelatedAppointmentModel, CompletePrescription, RelatedPrescriptionModel } from "./index"

export const PatientModel = z.object({
  userId: z.string().uuid().optional(),
  age: z.number().int(),
  appointmentId: z.string().uuid().nullish(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class PatientDto extends createZodDto(PatientModel) {
}

export interface CompletePatient extends z.infer<typeof PatientModel> {
  user: CompleteUser
  lastAppointment?: CompleteAppointment | null
  Prescription: CompletePrescription[]
}

/**
 * RelatedPatientModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedPatientModel: z.ZodSchema<CompletePatient> = z.lazy(() => PatientModel.extend({
  user: RelatedUserModel,
  lastAppointment: RelatedAppointmentModel.nullish(),
  Prescription: RelatedPrescriptionModel.array(),
}))
