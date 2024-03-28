import 'package:app/core/theme/palette.dart';
import 'package:app/core/theme/typography.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    colorScheme: ColorScheme.light(
      background: Palette.lightTheme.primary ?? Colors.white,
      primary: Palette.lightTheme.tertiary ??
          Colors.white, // Primary like like accent here
      secondary: Palette.lightTheme.secondary ?? Colors.white,
      tertiary: Palette.lightTheme.tertiary ?? Colors.white,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: Palette.lightTheme.primary ?? Colors.white,
    ),
    useMaterial3: true,
    extensions: <ThemeExtension<dynamic>>[
      Palette.lightTheme,
      CTypography.cTypography,
    ],
  );
}
