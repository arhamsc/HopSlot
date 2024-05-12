import 'package:app/core/theme/palette.dart';
import 'package:app/core/theme/typography.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputStyles {
  static InputDecoration primaryText(BuildContext context) {
    final Palette? palette = Theme.of(context).extension<Palette>();
    final CTypography? typography = Theme.of(context).extension<CTypography>();

    return InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(150.r),
        borderSide: BorderSide.none,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(150.r),
        borderSide: BorderSide.none,
      ),
      disabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(150.r),
        borderSide: BorderSide.none,
      ),
      hintStyle: typography?.body2?.copyWith(
        color: palette?.tertiary,
      ),
      labelStyle: typography?.body2?.copyWith(
        color: palette?.tertiary,
      ),
      floatingLabelBehavior: FloatingLabelBehavior.never,
      fillColor: palette?.secondary?.withOpacity(0.35),
      filled: true,
      constraints: BoxConstraints(maxHeight: 100.h),
    );
  }

  static InputDecoration invertedText(BuildContext context) {
    final Palette? palette = Theme.of(context).extension<Palette>();
    final CTypography? typography = Theme.of(context).extension<CTypography>();
    final primaryDec = primaryText(context);

    return primaryDec.copyWith(
      filled: true,
      fillColor: palette?.primary,
      enabledBorder: primaryDec.enabledBorder?.copyWith(
        borderSide: primaryDec.enabledBorder?.borderSide.copyWith(
          color: palette?.secondary,
        ),
      ),
      labelStyle: typography?.body2?.copyWith(
        color: palette?.secondary,
      ),
    );
  }
}
