import 'package:freezed_annotation/freezed_annotation.dart';

part 'action_result.enum.g.dart';

part 'action_result.enum.freezed.dart';

@freezed
class ActionResult with _$ActionResult {
  const ActionResult._();

  const factory ActionResult() = _ActionResult;

  const factory ActionResult.success() = _ActionResultSuccess;

  const factory ActionResult.unSuccessful() = _ActionResultUnSuccessful;

  const factory ActionResult.idle() = _ActionResultIdle;

  bool get isSuccessful => this is _ActionResultSuccess;

  bool get isUnSuccessful => this is _ActionResultUnSuccessful;

  bool get isIdle => this is _ActionResultIdle;

  factory ActionResult.fromJson(Map<String, dynamic> json) =>
      _$ActionResultFromJson(json);
}
