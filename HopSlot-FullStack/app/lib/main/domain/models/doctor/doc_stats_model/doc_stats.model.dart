import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_stats.model.g.dart';

part 'doc_stats.model.freezed.dart';

@freezed
class DocStats with _$DocStats {
  const factory DocStats({
    required int totalAppointments,
    required int totalPatients,
    required int totalPrescriptions,
  }) = _DocStats;

  factory DocStats.fromJson(Map<String, dynamic> json) =>
      _$DocStatsFromJson(json);
}
