import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { CompleteUser, RelatedUserModel, CompleteDoctor, RelatedDoctorModel, CompleteAppointment, RelatedAppointmentModel } from "./index"

export const HospitalModel = z.object({
  id: z.string().uuid().optional(),
  name: z.string().min(5).max(100),
  address: z.string().min(5).max(100),
  phone: z.string().nullish(),
  email: z.string().email().nullish(),
  website: z.string().url().nullish(),
  adminId: z.string().uuid(),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class HospitalDto extends createZodDto(HospitalModel) {
}

export interface CompleteHospital extends z.infer<typeof HospitalModel> {
  admin: CompleteUser
  Doctor: CompleteDoctor[]
  Appointment: CompleteAppointment[]
}

/**
 * RelatedHospitalModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedHospitalModel: z.ZodSchema<CompleteHospital> = z.lazy(() => HospitalModel.extend({
  admin: RelatedUserModel,
  Doctor: RelatedDoctorModel.array(),
  Appointment: RelatedAppointmentModel.array(),
}))
