import 'package:app/core/constants/enums.dart';
import 'package:app/main/domain/states/snack_bar_state/snack_bar.state.model.dart';
import 'package:app/shared/presentation/providers/flash_bar_controller/flash_bar_controller.provider.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/providers/snack_bars_provider/snack_bars.provider.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SnackBarListener extends ConsumerWidget {
  const SnackBarListener({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final snackBars = ref.watch(snackBarsProvider);
    final snackBarFlashNotifier =
        ref.watch(snackBarFlashControllerProvider.notifier);

    ref.listen<SnackBarState>(
      snackBarMessengerProvider,
      (prev, next) {
        next.map(
          initial: (_) {},
          active: (state) async {
            final c = switch (state.type) {
              SnackbarType.success =>
                snackBars.successSnackBar(context, state.message),
              SnackbarType.error =>
                snackBars.errorSnackBar(context, state.message),
              SnackbarType.info =>
                snackBars.infoSnackBar(context, state.message),
              SnackbarType.warning =>
                snackBars.warningSnackBar(context, state.message),
              SnackbarType.loading =>
                snackBars.loadingSnackBar(context, state.message),
            };

            snackBarFlashNotifier.setFlashController(c);
          },
          hidden: (_) {
            ScaffoldMessenger.of(context).hideCurrentSnackBar();
            snackBarFlashNotifier.removeFlashController();
          },
        );
      },
    );
    return child;
  }
}
