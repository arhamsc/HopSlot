import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteHospital, RelatedHospitalModel, CompleteDoctor, RelatedDoctorModel, CompleteUser, RelatedUserModel, CompletePrescription, RelatedPrescriptionModel } from "./index"

export const ReportModel = z.object({
  id: z.string().uuid().optional(),
  hospitalId: z.string().uuid(),
  doctorId: z.string().uuid(),
  patientId: z.string().uuid(),
  issueDate: z.date(),
  signedBy: z.string(),
  prescriptionId: z.string().uuid(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class ReportDto extends createZodDto(ReportModel) {
}

export interface CompleteReport extends z.infer<typeof ReportModel> {
  hospital: CompleteHospital
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
  hospital: RelatedHospitalModel,
  doctor: RelatedDoctorModel,
  patient: RelatedUserModel,
  prescription: RelatedPrescriptionModel,
}))
