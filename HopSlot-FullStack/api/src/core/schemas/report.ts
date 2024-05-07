import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteDoctor, RelatedDoctorModel, CompleteUser, RelatedUserModel, CompletePrescription, RelatedPrescriptionModel } from "./index"

export const ReportModel = z.object({
  id: z.string().uuid().optional(),
  doctorId: z.string().uuid(),
  patientId: z.string().uuid(),
  issueDate: z.date(),
  signedBy: z.string(),
  reportPublicId: z.string(),
  reportSecureUrl: z.string(),
  prescriptionId: z.string().uuid(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class ReportDto extends createZodDto(ReportModel) {
}

export interface CompleteReport extends z.infer<typeof ReportModel> {
  doctor: CompleteDoctor
  patient: CompleteUser
  prescription: CompletePrescription
}

/**
 * RelatedReportModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedReportModel: z.ZodSchema<CompleteReport> = z.lazy(() => ReportModel.extend({
  doctor: RelatedDoctorModel,
  patient: RelatedUserModel,
  prescription: RelatedPrescriptionModel,
}))
