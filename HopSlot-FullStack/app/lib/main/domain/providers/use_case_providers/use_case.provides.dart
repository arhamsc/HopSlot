import 'package:app/main/data/providers/repo_providers/repo.providers.dart';
import 'package:app/main/domain/use_cases/appointment_use_cases/appointment_look_up.uc.dart';
import 'package:app/main/domain/use_cases/appointment_use_cases/book_appointment.uc.dart';
import 'package:app/main/domain/use_cases/appointment_use_cases/get_appointment.uc.dart';
import 'package:app/main/domain/use_cases/appointment_use_cases/get_appointment_detail.uc.dart';
import 'package:app/main/domain/use_cases/auth_ucs/login.uc.dart';
import 'package:app/main/domain/use_cases/auth_ucs/logout.uc.dart';
import 'package:app/main/domain/use_cases/auth_ucs/sign_up.uc.dart';
import 'package:app/main/domain/use_cases/doc_use_cases/doc_dashboard.uc.dart';
import 'package:app/main/domain/use_cases/appointment_use_cases/get_appointment_history.uc.dart';
import 'package:app/main/domain/use_cases/doc_use_cases/doc_update_room_loc.uc.dart';
import 'package:app/main/domain/use_cases/doc_use_cases/get_doc_details.uc.dart';
import 'package:app/main/domain/use_cases/doc_use_cases/i_am_late.uc.dart';
import 'package:app/main/domain/use_cases/patients/get_patient_details.uc.dart';
import 'package:app/main/domain/use_cases/prescription/get_prescription.uc.dart';
import 'package:app/main/domain/use_cases/prescription/issue_prescription.uc.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'use_case.provides.g.dart';

/* Auth Use Cases */

@riverpod
LoginUC loginUC(LoginUCRef ref) {
  return LoginUC(
      ref.watch(authRepoProvider), ref, ref.watch(getDocDetailsUCProvider));
}

@riverpod
SignUpUC signUpUC(SignUpUCRef ref) {
  return SignUpUC(ref.watch(authRepoProvider), ref);
}

@riverpod
LogoutUC logoutUC(LogoutUCRef ref) {
  return LogoutUC(ref.watch(authRepoProvider), ref);
}

/* Appointment Use Cases */
@riverpod
GetAppointmentsUseCase getAppointmentsUC(GetAppointmentsUCRef ref) {
  return GetAppointmentsUseCase(ref.watch(appointmentsRepoProvider));
}

@riverpod
AppointmentLookUpUC appointmentLookUpUC(AppointmentLookUpUCRef ref) {
  return AppointmentLookUpUC(ref.watch(appointmentLookupRepoProvider));
}

@riverpod
BookAppointmentUC bookAppointmentUC(BookAppointmentUCRef ref) {
  return BookAppointmentUC(ref.watch(appointmentsRepoProvider));
}

@riverpod
DocDashboardUC docDashboardUC(DocDashboardUCRef ref) {
  return DocDashboardUC(ref.watch(docInfoRepoProvider));
}

@riverpod
GetAppointmentHistoryUC getAppointmentHistoryUC(
    GetAppointmentHistoryUCRef ref) {
  return GetAppointmentHistoryUC(ref.watch(appointmentsRepoProvider));
}

@riverpod
GetAppointmentDetailUC getAppointmentDetailUC(GetAppointmentDetailUCRef ref) {
  return GetAppointmentDetailUC(ref.watch(appointmentsRepoProvider));
}

@riverpod
GetDocDetailsUseCase getDocDetailsUC(GetDocDetailsUCRef ref) {
  return GetDocDetailsUseCase(ref.watch(docRepoProvider));
}

@riverpod
IAmLateUC iAmLateUC(IAmLateUCRef ref) {
  return IAmLateUC(ref.watch(docRepoProvider));
}

@riverpod
GetPrescriptionUC getPrescriptionUC(GetPrescriptionUCRef ref) {
  return GetPrescriptionUC(ref.watch(prescriptionRepoProvider));
}

@riverpod
IssuePrescriptionUC issuePrescriptionUC(IssuePrescriptionUCRef ref) {
  return IssuePrescriptionUC(ref.watch(prescriptionRepoProvider));
}

@riverpod
GetPatientUC getPatientDetailsUC(GetPatientDetailsUCRef ref) {
  return GetPatientUC(ref.watch(patientRepoProvider));
}

@riverpod
DocUpdateRoomLocUC docUpdateRoomLoc(DocUpdateRoomLocRef ref) {
  return DocUpdateRoomLocUC(ref.watch(docRepoProvider), ref);
}
