import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

@immutable
class CTypography extends ThemeExtension<CTypography> {

  final TextStyle? title1;
  final TextStyle? headline1, headline2, headline3;
  final TextStyle? body1, body2, body3;

  const CTypography({
    required this.title1,
    required this.headline1,
    required this.headline2,
    required this.headline3,
    required this.body1,
    required this.body2,
    required this.body3,
  });

  @override
  ThemeExtension<CTypography> copyWith({
    TextStyle? title1,
    TextStyle? headline1,
    TextStyle? headline2,
    TextStyle? headline3,
    TextStyle? body1,
    TextStyle? body2,
    TextStyle? body3,
  }) {
    return CTypography(
      title1: title1 ?? this.title1,
      headline1: headline1 ?? this.headline1,
      headline2: headline2 ?? this.headline2,
      headline3: headline3 ?? this.headline3,
      body1: body1 ?? this.body1,
      body2: body2 ?? this.body2,
      body3: body3 ?? this.body3,
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
      body2: TextStyle.lerp(body2, other.body2, t),
      body3: TextStyle.lerp(body3, other.body3, t),
    );
  }

  static final CTypography cTypography = CTypography(
    title1: GoogleFonts.outfit(
      fontSize: Adaptive.sp(38),
      fontWeight: FontWeight.bold,
    ),
    headline1: GoogleFonts.outfit(
      fontSize: Adaptive.sp(24),
      fontWeight: FontWeight.bold,
    ),
    headline2: GoogleFonts.outfit(
      fontSize: Adaptive.sp(18),
      fontWeight: FontWeight.bold,
    ),
    headline3: GoogleFonts.outfit(
      fontSize: Adaptive.sp(30),
      fontWeight: FontWeight.bold,
    ),
    body1: GoogleFonts.rosario(
      fontSize: Adaptive.sp(20),
      fontWeight: FontWeight.normal,
    ),
    body2: GoogleFonts.rosario(
      fontSize: Adaptive.sp(14),
      fontWeight: FontWeight.normal,
    ),
    body3: GoogleFonts.rosario(
      fontSize: Adaptive.sp(28),
      fontWeight: FontWeight.normal,
    ),
  );
}
