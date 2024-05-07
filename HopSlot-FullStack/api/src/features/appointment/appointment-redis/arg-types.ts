export interface StoreAppointmentArgs {
  appointmentId: string;
  hospitalId: string;
  doctorId: string;
  slotId: string;
}

export interface GetAppointmentArgs
  extends Omit<StoreAppointmentArgs, 'appointmentId'> {
  status?: string;
}
