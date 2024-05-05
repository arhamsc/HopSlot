import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteAppointment, RelatedAppointmentModel, CompleteReport, RelatedReportModel } from "./index"

export const PrescriptionModel = z.object({
  id: z.string().uuid().optional(),
  appointmentId: z.string().uuid(),
  issueDate: z.date(),
  body: z.string().min(10),
  otherNotes: z.string().nullish(),
  docSign: z.string(),
  reports: z.string().array(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class PrescriptionDto extends createZodDto(PrescriptionModel) {
}

export interface CompletePrescription extends z.infer<typeof PrescriptionModel> {
  appointment: CompleteAppointment
  Report: CompleteReport[]
}

/**
 * RelatedPrescriptionModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedPrescriptionModel: z.ZodSchema<CompletePrescription> = z.lazy(() => PrescriptionModel.extend({
  appointment: RelatedAppointmentModel,
  Report: RelatedReportModel.array(),
}))
