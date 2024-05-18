import 'package:app/main/domain/entities/appointment_detail/appointment_detail.model.dart';
import 'package:app/main/domain/entities/prescription/prescription.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'my_prescription.state.g.dart';

part 'my_prescription.state.freezed.dart';

@freezed
class MyPrescriptionState with _$MyPrescriptionState {
  const factory MyPrescriptionState({
    required AppointmentDetail appointmentDetail,
    required List<Prescription> prescriptions,
    Prescription? selectedPrescription,
  }) = _MyPrescriptionState;

  factory MyPrescriptionState.fromJson(Map<String, dynamic> json) =>
      _$MyPrescriptionStateFromJson(json);
}
