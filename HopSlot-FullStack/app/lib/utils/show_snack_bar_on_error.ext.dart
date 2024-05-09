import 'package:app/core/constants/enums.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueUI on AsyncValue {
  void showSnackbarOnAppError(BuildContext context, WidgetRef ref) {
    if (!isLoading && hasError) {
      String e = error.toString();
      if (error is AppException) {
        final err = error as AppException;
        e = err.message;
      }

      ref.read(snackBarMessengerProvider.notifier).showSnackBar(
            message: e,
            type: SnackbarType.error,
          );
    }
  }
}
