import 'package:flutter/material.dart';
import 'package:flutter_color_models/flutter_color_models.dart';

@immutable
class Palette extends ThemeExtension<Palette> {
  // final Color primary = const HsbColor(31, 9, 96);
  // final Color secondary = const HsbColor(91, 20, 53);
  // final Color tertiary = const HsbColor(0, 0, 15);
  // final Color quaternary = const HsbColor(23, 12, 70);

  final Color? primary;
  final Color? secondary;
  final Color? tertiary;
  final Color? quaternary;

  const Palette({
    required this.primary,
    required this.secondary,
    required this.tertiary,
    required this.quaternary,
  });

  @override
  ThemeExtension<Palette> copyWith({
    Color? primary,
    Color? secondary,
    Color? tertiary,
    Color? quaternary,
  }) {
    return Palette(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      tertiary: tertiary ?? this.tertiary,
      quaternary: quaternary ?? this.quaternary,
    );
  }

  @override
  ThemeExtension<Palette> lerp(
      covariant ThemeExtension<Palette>? other, double t) {
    if (other is! Palette) {
      return this;
    }

    return Palette(
      primary: Color.lerp(primary, other.primary, t),
      secondary: Color.lerp(secondary, other.secondary, t),
      tertiary: Color.lerp(tertiary, other.tertiary, t),
      quaternary: Color.lerp(quaternary, other.quaternary, t),
    );
  }

  @override
  String toString() {
    return 'Palette(primary: $primary, secondary: $secondary, tertiary: $tertiary, quaternary: $quaternary)';
  }

  static Palette lightTheme = const Palette(
    primary: HsbColor(31, 9, 96),
    secondary: HsbColor(91, 20, 53),
    tertiary: HsbColor(0, 0, 15),
    quaternary: HsbColor(23, 12, 70),
  );
}
