import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CTypography {
  static final TextStyle title1 = GoogleFonts.outfit(
    fontSize: Adaptive.sp(38),
    fontWeight: FontWeight.bold,
  );
  static final TextStyle headline1 = GoogleFonts.outfit(
    fontSize: Adaptive.sp(24),
    fontWeight: FontWeight.bold,
  );
  static final TextStyle headline2 = GoogleFonts.outfit(
    fontSize: Adaptive.sp(20),
    fontWeight: FontWeight.bold,
  );
  static final TextStyle headline3 = GoogleFonts.outfit(
    fontSize: Adaptive.sp(30),
    fontWeight: FontWeight.bold,
  );
}
