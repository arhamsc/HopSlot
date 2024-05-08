import 'package:app/core/theme/palette.dart';
import 'package:app/core/theme/typography.dart';
import 'package:app/shared/presentation/shared/widgets/utility/styles/variants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonStyles {
  static ButtonStyle commonButton(BuildContext context) {
    final palette = Theme.of(context).extension<Palette>();
    final title2 = Theme.of(context).extension<CTypography>()?.headline2;

    return ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: Size(361.w, 60.h),
      maximumSize: Size(361.w, 60.h),
      textStyle: title2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      disabledBackgroundColor: palette?.secondary,
      disabledForegroundColor: palette?.primary,
    );
  }

  static ButtonStyle primaryButton(
    BuildContext context, {
    SizeVariants size = SizeVariants.xl,
  }) {
    final palette = Theme.of(context).extension<Palette>();
    final title2 = Theme.of(context).extension<CTypography>()?.headline2;

    final width = size == SizeVariants.l ? 240.w : 361.w;

    return ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: Size(width, 60.h),
      maximumSize: Size(width, 60.h),
      textStyle: title2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(150.r),
      ),
      disabledBackgroundColor: palette?.secondary?.withOpacity(0.50),
      disabledForegroundColor: palette?.primary,
      foregroundColor: palette?.primary,
      backgroundColor: palette?.secondary,
    );
  }

  static ButtonStyle secondaryButton(
    BuildContext context, {
    SizeVariants size = SizeVariants.xl,
  }) {
    final palette = Theme.of(context).extension<Palette>();
    final title2 = Theme.of(context).extension<CTypography>()?.headline2;

    final width = size == SizeVariants.l ? 240.w : 361.w;

    return ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: Size(width, 60.h),
      maximumSize: Size(width, 60.h),
      textStyle: title2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(150.r),
        side: BorderSide(
          color: palette?.secondary ?? Colors.transparent,
          width: 3.w,
        ),
      ),
      disabledBackgroundColor: palette?.secondary,
      disabledForegroundColor: palette?.primary,
      foregroundColor: palette?.secondary,
      backgroundColor: palette?.primary,
    );
  }

  static ButtonStyle invertedButton(
    BuildContext context, {
    SizeVariants size = SizeVariants.xl,
  }) {
    final palette = Theme.of(context).extension<Palette>();
    final title2 = Theme.of(context).extension<CTypography>()?.headline2;

    final width = size == SizeVariants.l ? 240.w : 361.w;

    return ElevatedButton.styleFrom(
      elevation: 0,
      minimumSize: Size(width, 60.h),
      maximumSize: Size(width, 60.h),
      textStyle: title2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.r),
      ),
      disabledBackgroundColor: palette?.secondary,
      disabledForegroundColor: palette?.primary,
      foregroundColor: palette?.secondary,
      backgroundColor: palette?.primary,
    );
  }
}
