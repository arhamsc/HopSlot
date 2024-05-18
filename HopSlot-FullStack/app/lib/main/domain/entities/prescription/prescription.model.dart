import 'package:app/main/domain/entities/report/report.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'prescription.model.freezed.dart';

part 'prescription.model.g.dart';

@freezed
class Prescription with _$Prescription {
  const factory Prescription({
    required String id,
    required String appointmentId,
    required String patientId,
    required String doctorId,
    required DateTime issueDate,
    required String body,
    String? otherNotes,
    required String docSign,
    @JsonKey(name: 'report') @Default([]) List<Report> reports,
  }) = _Prescription;

  factory Prescription.fromJson(Map<String, dynamic> json) =>
      _$PrescriptionFromJson(json);
}
