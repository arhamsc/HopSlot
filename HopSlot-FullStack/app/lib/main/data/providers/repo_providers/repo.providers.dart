import 'package:app/core/api/app_api.dart';
import 'package:app/main/data/repositories/appointment_lookup.repo.dart';
import 'package:app/main/data/repositories/appointments.repo.dart';
import 'package:app/main/data/repositories/auth.repo.dart';
import 'package:app/main/data/repositories/doc.repo.dart';
import 'package:app/main/data/repositories/doc_info.repo.dart';
import 'package:app/main/data/repositories/patient.repo.dart';
import 'package:app/main/data/repositories/prescription.repo.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'repo.providers.g.dart';

@riverpod
AuthRepo authRepo(AuthRepoRef ref) {
  final api = ref.watch(apiProvider).nestApi;
  return AuthRepo(api);
}

@riverpod
AppointmentsRepo appointmentsRepo(AppointmentsRepoRef ref) {
  return AppointmentsRepo(ref.watch(apiProvider).nestApi);
}

@riverpod
AppointmentLookupRepo appointmentLookupRepo(AppointmentLookupRepoRef ref) {
  return AppointmentLookupRepo(ref.watch(apiProvider).nestApi);
}

@riverpod
DocInfoRepo docInfoRepo(DocInfoRepoRef ref) {
  return DocInfoRepo(ref.watch(apiProvider).nestApi);
}

@riverpod
DocRepo docRepo(DocRepoRef ref) {
  return DocRepo(ref.watch(apiProvider).nestApi);
}

@riverpod
PrescriptionRepo prescriptionRepo(PrescriptionRepoRef ref) {
  return PrescriptionRepo(ref.watch(apiProvider).nestApi);
}

@riverpod
PatientRepo patientRepo(PatientRepoRef ref) {
  return PatientRepo(ref.watch(apiProvider).nestApi);
}
