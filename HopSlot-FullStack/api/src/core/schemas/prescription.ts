import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteHospital, RelatedHospitalModel, CompleteDoctor, RelatedDoctorModel, CompleteUser, RelatedUserModel, CompleteReport, RelatedReportModel } from "./index"

export const PrescriptionModel = z.object({
  id: z.string().uuid().optional(),
  hospitalId: z.string().uuid(),
  doctorId: z.string().uuid(),
  patientId: z.string().uuid(),
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
  hospital: CompleteHospital
  doctor: CompleteDoctor
  patient: CompleteUser
  Report: CompleteReport[]
}

/**
 * RelatedPrescriptionModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedPrescriptionModel: z.ZodSchema<CompletePrescription> = z.lazy(() => PrescriptionModel.extend({
  hospital: RelatedHospitalModel,
  doctor: RelatedDoctorModel,
  patient: RelatedUserModel,
  Report: RelatedReportModel.array(),
}))
