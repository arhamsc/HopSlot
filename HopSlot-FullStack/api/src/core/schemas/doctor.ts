import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteHospital, RelatedHospitalModel, CompleteUser, RelatedUserModel, CompleteAppointment, RelatedAppointmentModel, CompletePrescription, RelatedPrescriptionModel, CompleteReport, RelatedReportModel } from "./index"

export const DoctorModel = z.object({
  hospitalId: z.string().uuid().optional(),
  userId: z.string().uuid(),
  cabinNumber: z.number().int(),
  cabinFloor: z.number().int(),
  cabinLat: z.number(),
  cabinLng: z.number(),
  cabinAlt: z.number(),
  noOfPatientsConsulted: z.number().int(),
  lastClockIn: z.date().nullish(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class DoctorDto extends createZodDto(DoctorModel) {
}

export interface CompleteDoctor extends z.infer<typeof DoctorModel> {
  hospital: CompleteHospital
  user: CompleteUser
  Appointment: CompleteAppointment[]
  Prescription: CompletePrescription[]
  Report: CompleteReport[]
}

/**
 * RelatedDoctorModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedDoctorModel: z.ZodSchema<CompleteDoctor> = z.lazy(() => DoctorModel.extend({
  hospital: RelatedHospitalModel,
  user: RelatedUserModel,
  Appointment: RelatedAppointmentModel.array(),
  Prescription: RelatedPrescriptionModel.array(),
  Report: RelatedReportModel.array(),
}))
