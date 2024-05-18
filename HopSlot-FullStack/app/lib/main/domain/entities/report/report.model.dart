import 'package:freezed_annotation/freezed_annotation.dart';

part 'report.model.freezed.dart';

part 'report.model.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String id,
    required String doctorId,
    required String patientId,
    required DateTime issueDate,
    required String signedBy,
    required String reportPublicId,
    required String reportSecureUrl,
    required String prescriptionId,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
