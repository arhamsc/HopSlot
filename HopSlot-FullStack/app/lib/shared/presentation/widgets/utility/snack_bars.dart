import 'package:app/core/theme/palette.dart';
import 'package:app/shared/presentation/providers/snack_bar_messenger_provider/snack_bar_messenger_provider.dart';
import 'package:app/shared/presentation/providers/snack_bars_provider/snack_bars.provider.dart';
import 'package:app/shared/presentation/widgets/ui/typography/body.typo.dart';
import 'package:app/utils/flash_controller.ext.dart';
import 'package:flash/flash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SnackBars {
  final SnackBarsRef ref;

  SnackBars(this.ref);

  DefaultFlashController commonSnackBar(
    BuildContext context,
    String message, {
    required Widget icon,
    String? title,
    Color? indicatorColor,
    Color? backgroundColor,
    List<Widget>? actions,
    bool? showProgressIndicator,
  }) {
    final palette = Theme.of(context).extension<Palette>();

    return DefaultFlashController(
      context,
      duration: const Duration(seconds: 4),
      persistent: true,
      builder: (context, controller) {
        return SizedBox(
          child: FlashBar(
            controller: controller,
            backgroundColor:
                backgroundColor ?? palette?.quaternary?.withOpacity(0.5),
            actions: actions,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.r)),
              side: BorderSide(
                color:
                    indicatorColor ?? palette?.tertiary ?? Colors.transparent,
                strokeAlign: BorderSide.strokeAlignInside,
              ),
            ),
            useSafeArea: true,
            elevation: 2,
            margin: EdgeInsets.only(bottom: 20.h),
            behavior: FlashBehavior.floating,
            clipBehavior: Clip.hardEdge,
            indicatorColor: indicatorColor ?? palette?.tertiary,
            icon: icon,
            showProgressIndicator: showProgressIndicator ?? false,
            progressIndicatorBackgroundColor: indicatorColor,
            content: title != null
                ? Text(message).body3()
                : Text(message).body2(isMedium: true),
            title: title != null ? Text(title).body1(isMedium: true) : null,
          ),
        );
      },
    );
  }

  DefaultFlashController successSnackBar(BuildContext context, String message) {
    final palette = Theme.of(context).extension<Palette>();
    final snackBarData =
        ref.read(snackBarMessengerProvider).mapOrNull(active: (val) => val);
    return commonSnackBar(
      context,
      snackBarData?.message ?? "No Message",
      title: snackBarData?.title,
      icon: Icon(
        Icons.check_circle_rounded,
        color: palette?.tertiary,
        size: 32.sp,
      ),
    );
  }

  DefaultFlashController errorSnackBar(BuildContext context, String message) {
    final snackBarData =
        ref.read(snackBarMessengerProvider).mapOrNull(active: (val) => val);
    return commonSnackBar(
      context,
      snackBarData?.message ?? "No Message",
      title: snackBarData?.title,
      icon: Icon(
        Icons.error_rounded,
        color: Colors.red,
        size: 32.sp,
      ),
      indicatorColor: Colors.red.shade500,
    );
  }

  DefaultFlashController infoSnackBar(BuildContext context, String message) {
    final palette = Theme.of(context).extension<Palette>();
    final snackBarData =
        ref.read(snackBarMessengerProvider).mapOrNull(active: (val) => val);

    return commonSnackBar(
      context,
      snackBarData?.message ?? "No Message",
      title: snackBarData?.title,
      icon: Icon(
        Icons.info_rounded,
        color: palette?.tertiary,
        size: 32.sp,
      ),
    );
  }

  DefaultFlashController warningSnackBar(BuildContext context, String message) {
    final snackBarData =
        ref.read(snackBarMessengerProvider).mapOrNull(active: (val) => val);
    return commonSnackBar(
      context,
      snackBarData?.message ?? "No Message",
      title: snackBarData?.title,
      icon: Icon(
        Icons.warning_amber_rounded,
        color: Colors.amber,
        size: 32.sp,
      ),
      indicatorColor: Colors.amber,
    );
  }

  DefaultFlashController loadingSnackBar(BuildContext context, String message) {
    final snackBarData =
        ref.read(snackBarMessengerProvider).mapOrNull(active: (val) => val);
    final palette = Theme.of(context).extension<Palette>();

    return commonSnackBar(
      context,
      snackBarData?.message ?? "No Message",
      title: snackBarData?.title,
      icon: Padding(
        padding: const EdgeInsets.all(10),
        child: CircularProgressIndicator(
          color: palette?.tertiary,
          strokeWidth: 4,
        ),
      ),
    ).copyWith(
      barrierBlur: 4,
      barrierColor: palette?.secondary?.withOpacity(0.3),
      barrierDismissible: false,
    );
  }
}
