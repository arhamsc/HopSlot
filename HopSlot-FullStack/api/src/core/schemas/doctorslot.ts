import * as z from "nestjs-zod/z"
import { createZodDto } from "nestjs-zod/dto"
import { Status } from "./enums"
import { CompleteDoctor, RelatedDoctorModel, CompleteAppointment, RelatedAppointmentModel } from "./index"

export const DoctorSlotModel = z.object({
  id: z.string().uuid().optional(),
  doctorId: z.string().uuid(),
  slotStart: z.date(),
  slotEnd: z.date(),
  duration: z.number().int(),
  status: z.nativeEnum(Status),
  createdAt: z.date().optional(),
  updatedAt: z.date().optional(),
})

export class DoctorSlotDto extends createZodDto(DoctorSlotModel) {
}

export interface CompleteDoctorSlot extends z.infer<typeof DoctorSlotModel> {
  doctor: CompleteDoctor
  Appointment: CompleteAppointment[]
}

/**
 * RelatedDoctorSlotModel contains all relations on your model in addition to the scalars
 *
 * NOTE: Lazy required in case of potential circular dependencies within schema
 */
export const RelatedDoctorSlotModel: z.ZodSchema<CompleteDoctorSlot> = z.lazy(() => DoctorSlotModel.extend({
  doctor: RelatedDoctorModel,
  Appointment: RelatedAppointmentModel.array(),
}))
