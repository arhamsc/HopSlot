import 'package:app/shared/domain/enums/action_result/action_result.enum.dart';
import 'package:app/shared/domain/models/entities/doctor/doctor.model.dart';
import 'package:app/shared/domain/models/entities/patient/patient.model.dart';
import 'package:app/shared/domain/models/entities/user/user.model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_controller.state.g.dart';

part 'profile_controller.state.freezed.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState({
    @Default(ActionResult.idle()) ActionResult actionResult,
    required User user,
    Doctor? doctor,
    Patient? patient,
  }) = _ProfileState;

  factory ProfileState.fromJson(Map<String, dynamic> json) =>
      _$ProfileStateFromJson(json);
}