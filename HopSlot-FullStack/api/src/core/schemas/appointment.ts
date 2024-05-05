import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { AppointmentStatus } from "./enums"
import { CompleteHospital, RelatedHospitalModel, CompleteDoctor, RelatedDoctorModel, CompleteUser, RelatedUserModel, CompleteDoctorSlot, RelatedDoctorSlotModel, CompletePatient, RelatedPatientModel, CompletePrescription, RelatedPrescriptionModel } from "./index"

export const AppointmentModel = z.object({
  id: z.string().uuid(),
  hospitalId: z.string().uuid(),
  doctorId: z.string().uuid(),
  patientId: z.string().uuid(),
  appointmentSlotId: z.string().uuid(),
  status: z.nativeEnum(AppointmentStatus),
  symptoms: z.string(),
  delay: z.number().int().nullish(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class AppointmentDto extends createZodDto(AppointmentModel) {
}

export interface CompleteAppointment extends z.infer<typeof AppointmentModel> {
  hospital: CompleteHospital
  doctor: CompleteDoctor
  patient: CompleteUser
  appointmentSlot: CompleteDoctorSlot
  Patient: CompletePatient[]
  Prescription: CompletePrescription[]
}

/**
 * RelatedAppointmentModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedAppointmentModel: z.ZodSchema<CompleteAppointment> = z.lazy(() => AppointmentModel.extend({
  hospital: RelatedHospitalModel,
  doctor: RelatedDoctorModel,
  patient: RelatedUserModel,
  appointmentSlot: RelatedDoctorSlotModel,
  Patient: RelatedPatientModel.array(),
  Prescription: RelatedPrescriptionModel.array(),
}))
