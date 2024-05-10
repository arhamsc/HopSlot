import 'package:app/core/theme/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@immutable
class CTypography extends ThemeExtension<CTypography> {
  final TextStyle? title1;
  final TextStyle? headline1, headline2, headline3;
  final TextStyle? body1, body1Medium, body1Bold;
  final TextStyle? body2, body2Medium, body2Bold;
  final TextStyle? body3, body3Medium, body3Bold;

  const CTypography({
    required this.title1,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.body1,
    required this.body1Medium,
    required this.body1Bold,
    required this.body2,
    required this.body2Medium,
    required this.body2Bold,
    required this.body3,
    required this.body3Medium,
    required this.body3Bold,
  });

  @override
  ThemeExtension<CTypography> copyWith({
    TextStyle? title1,
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? body1,
    TextStyle? body1Medium,
    TextStyle? body1Bold,
    TextStyle? body2,
    TextStyle? body2Medium,
    TextStyle? body2Bold,
    TextStyle? body3,
    TextStyle? body3Medium,
    TextStyle? body3Bold,
  }) {
    return CTypography(
      title1: title1 ?? this.title1,
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      body1: body1 ?? this.body1,
      body1Medium: body1Medium ?? this.body1Medium,
      body1Bold: body1Bold ?? this.body1Bold,
      body2: body2 ?? this.body2,
      body2Medium: body2Medium ?? this.body2Medium,
      body2Bold: body2Bold ?? this.body2Bold,
      body3: body3 ?? this.body3,
      body3Medium: body3Medium ?? this.body3Medium,
      body3Bold: body3Bold ?? this.body3Bold,
    );
  }

  @override
  ThemeExtension<CTypography> lerp(
      covariant ThemeExtension<CTypography>? other, double t) {
    if (other is! CTypography) {
      return this;
    }

    return CTypography(
      title1: TextStyle.lerp(title1, other.title1, t),
      headline1: TextStyle.lerp(headline1, other.headline1, t),
      headline2: TextStyle.lerp(headline2, other.headline2, t),
      headline3: TextStyle.lerp(headline3, other.headline3, t),
      body1: TextStyle.lerp(body1, other.body1, t),
      body1Medium: TextStyle.lerp(body1Medium, other.body1Medium, t),
      body1Bold: TextStyle.lerp(body1Bold, other.body1Bold, t),
      body2: TextStyle.lerp(body2, other.body2, t),
      body2Medium: TextStyle.lerp(body2Medium, other.body2Medium, t),
      body2Bold: TextStyle.lerp(body2Bold, other.body2Bold, t),
      body3: TextStyle.lerp(body3, other.body3, t),
      body3Medium: TextStyle.lerp(body3Medium, other.body3Medium, t),
      body3Bold: TextStyle.lerp(body3Bold, other.body3Bold, t),
    );
  }

  static final CTypography cTypography = CTypography(
    title1: GoogleFonts.outfit(
      fontSize: 38.sp,
      fontWeight: FontWeight.bold,
      color: Palette.lightTheme.tertiary,
    ),
    headline1: GoogleFonts.outfit(
      fontSize: 24.sp,
      fontWeight: FontWeight.bold,
      color: Palette.lightTheme.tertiary,
    ),
    headline2: GoogleFonts.outfit(
      fontSize: 18.sp,
      fontWeight: FontWeight.bold,
      color: Palette.lightTheme.tertiary,
    ),
    headline3: GoogleFonts.outfit(
      fontSize: 30.sp,
      fontWeight: FontWeight.bold,
      color: Palette.lightTheme.tertiary,
    ),
    body1: GoogleFonts.rosario(
      fontSize: (18.sp),
      fontWeight: FontWeight.normal,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body1Medium: GoogleFonts.rosario(
      fontSize: (18.sp),
      fontWeight: FontWeight.w500,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body1Bold: GoogleFonts.rosario(
      fontSize: (18.sp),
      fontWeight: FontWeight.bold,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body2: GoogleFonts.rosario(
      textStyle: TextStyle(
        fontSize: (16.sp),
        fontWeight: FontWeight.normal,
        height: 1.4,
        // 140% line height
        letterSpacing: 1,
        // 5% letter spacing
        color: Palette.lightTheme.tertiary,
      ),
    ),
    body2Medium: GoogleFonts.rosario(
      fontSize: (16.sp),
      fontWeight: FontWeight.w500,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body2Bold: GoogleFonts.rosario(
      fontSize: (16.sp),
      fontWeight: FontWeight.bold,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body3: GoogleFonts.rosario(
      fontSize: (12.sp),
      fontWeight: FontWeight.normal,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body3Medium: GoogleFonts.rosario(
      fontSize: (12.sp),
      fontWeight: FontWeight.w500,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
    body3Bold: GoogleFonts.rosario(
      fontSize: (12.sp),
      fontWeight: FontWeight.bold,
      height: 1.4,
      // 140% line height
      letterSpacing: 1,
      // 5% letter spacing
      color: Palette.lightTheme.tertiary,
    ),
  );
}
