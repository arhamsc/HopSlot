import 'package:app/core/constants/enums.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'snack_bar.state.model.freezed.dart';
part 'snack_bar.state.model.g.dart';

@freezed
class SnackBarState with _$SnackBarState {
  const SnackBarState._();

  const factory SnackBarState.initial() = _SnackBarStateInitial;

  const factory SnackBarState.active({
    required String message,
    String? title,
    required SnackbarType type,
    @Default(false) bool blockScreen,
    @Default(true) bool autoClose,
  }) = _SnackBarStateActive;

  const factory SnackBarState.hidden() = _SnackBarStateHidden;

  bool get isActive => this is _SnackBarStateActive;

  bool get isHidden => this is _SnackBarStateHidden;

  factory SnackBarState.fromJson(Map<String, dynamic> json) =>
      _$SnackBarStateFromJson(json);
}
