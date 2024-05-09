import 'package:flash/flash.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'flash_bar_controller.provider.g.dart';

@riverpod
class SnackBarFlashController extends _$SnackBarFlashController {
  @override
  DefaultFlashController<dynamic>? build() {
    return null;
  }

  void setFlashController(DefaultFlashController<dynamic> controller) {
    removeFlashController();
    state = controller;
    state?.show();
  }

  void removeFlashController() {
    if (state?.isDisposed == false) {
      state?.dismiss();
    }
    state = null;
  }
}
