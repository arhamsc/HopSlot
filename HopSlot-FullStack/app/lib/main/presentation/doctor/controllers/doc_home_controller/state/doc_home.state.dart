import 'package:app/main/domain/models/doctor/doc_stats_model/doc_stats.model.dart';
import 'package:app/shared/domain/models/entities/appointment/appointment.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'doc_home.state.g.dart';

part 'doc_home.state.freezed.dart';

@freezed
class DocHomeState with _$DocHomeState {
  const factory DocHomeState({
    @Default([]) List<Appointment> todaysAppointments,
    required DocStats docStats,
  }) = _DocHomeState;

  factory DocHomeState.fromJson(Map<String, dynamic> json) =>
      _$DocHomeStateFromJson(json);
}
