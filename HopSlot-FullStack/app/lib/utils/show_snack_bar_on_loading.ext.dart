import 'package:app/core/constants/enums.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/utils/exceptions/app_exception.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

extension AsyncValueUI on AsyncValue {
  void showSnackbarOnLoading(
    BuildContext context,
    WidgetRef ref, [
    String? message,
  ]) {
    if (isLoading) {
      ref.read(snackBarMessengerProvider.notifier).showSnackBar(
            message: message ?? "Loading...",
            type: SnackbarType.loading,
          );
    } else if (!isLoading && !hasError) {
      ref.read(snackBarMessengerProvider.notifier).hideSnackBar();
    }
  }
}
