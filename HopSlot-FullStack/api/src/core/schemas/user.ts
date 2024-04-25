import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { Role } from "./enums"
import { CompleteHospital, RelatedHospitalModel, CompleteDoctor, RelatedDoctorModel, CompletePatient, RelatedPatientModel, CompleteAppointment, RelatedAppointmentModel, CompletePrescription, RelatedPrescriptionModel, CompleteReport, RelatedReportModel } from "./index"

export const UserModel = z.object({
  id: z.string().uuid().optional(),
  email: z.string().email(),
  username: z.string().min(5).max(20),
  password: z.password().atLeastOne('digit').atLeastOne('lowercase').atLeastOne('uppercase').min(8).max(100).nullish(),
  firstName: z.string().nullish(),
  lastName: z.string().nullish(),
  employeeId: z.string().nullish(),
  refreshTokenHash: z.string().nullish(),
  role: z.nativeEnum(Role),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class UserDto extends createZodDto(UserModel) {
}

export interface CompleteUser extends z.infer<typeof UserModel> {
  Hospital: CompleteHospital[]
  Doctor?: CompleteDoctor | null
  Patient?: CompletePatient | null
  Appointment: CompleteAppointment[]
  Prescription: CompletePrescription[]
  Report: CompleteReport[]
}

/**
 * RelatedUserModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedUserModel: z.ZodSchema<CompleteUser> = z.lazy(() => UserModel.extend({
  Hospital: RelatedHospitalModel.array(),
  Doctor: RelatedDoctorModel.nullish(),
  Patient: RelatedPatientModel.nullish(),
  Appointment: RelatedAppointmentModel.array(),
  Prescription: RelatedPrescriptionModel.array(),
  Report: RelatedReportModel.array(),
}))
