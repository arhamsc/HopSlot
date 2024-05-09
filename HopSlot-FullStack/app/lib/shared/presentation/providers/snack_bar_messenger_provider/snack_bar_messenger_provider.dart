import 'package:app/core/constants/enums.dart';
import 'package:app/shared/domain/models/states/snack_bar_state/snack_bar.state.model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'snack_bar_messenger_provider.g.dart';

@riverpod
class SnackBarMessenger extends _$SnackBarMessenger {
  @override
  SnackBarState build() {
    return const SnackBarState.hidden();
  }

  void showSnackBar({
    required String message,
    required SnackbarType type,
    String? title,
    bool blockScreen = false,
    bool autoClose = true,
  }) {
    state = SnackBarState.active(
      message: message,
      title: title,
      type: type,
      blockScreen: blockScreen,
      autoClose: autoClose,
    );
  }

  void hideSnackBar() {
    state = const SnackBarState.hidden();
  }
}
