import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:app/shared/domain/models/entities/appointment_detail/appointment_detail.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'patient_home.state.freezed.dart';

part 'patient_home.state.g.dart';

@freezed
class PatientHomeState with _$PatientHomeState {
  const factory PatientHomeState({
    required List<Appointment> upcomingAppointments,
    required List<Appointment> pastAppointments,
    AppointmentDetail? selectedAppointment,
    String? activeType,
  }) = _PatientHomeState;

  factory PatientHomeState.fromJson(Map<String, dynamic> json) =>
      _$PatientHomeStateFromJson(json);
}
