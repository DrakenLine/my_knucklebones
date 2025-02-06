import 'package:flutter/material.dart';

class AppColorsExtension extends ThemeExtension<AppColorsExtension> {
  AppColorsExtension({
    required this.primary,
    required this.onPrimary,
    required this.primaryContainer,
    required this.secondary,
    required this.secondaryContainer,
    required this.onSecondary,
    required this.success,
    required this.success100,
    required this.error,
    required this.disabled100,
    required this.disabled200,
    required this.disabled300,
    required this.onBackground,
    required this.background,
  });

  final Color primary;
  final Color primaryContainer;
  final Color onPrimary;
  final Color secondary;
  final Color secondaryContainer;
  final Color onSecondary;
  final Color success;
  final Color success100;
  final Color error;
  final Color disabled100;
  final Color disabled200;
  final Color disabled300;
  final Color onBackground;
  final Color background;

  @override
  ThemeExtension<AppColorsExtension> lerp(
    covariant ThemeExtension<AppColorsExtension>? other,
    double t,
  ) {
    if (other is! AppColorsExtension) {
      return this;
    }

    return AppColorsExtension(
      primary: Color.lerp(primary, other.primary, t)!,
      onPrimary: Color.lerp(onPrimary, other.onPrimary, t)!,
      primaryContainer:
          Color.lerp(primaryContainer, other.primaryContainer, t)!,
      secondary: Color.lerp(secondary, other.secondary, t)!,
      secondaryContainer:
          Color.lerp(secondaryContainer, other.secondaryContainer, t)!,
      onSecondary: Color.lerp(onSecondary, other.onSecondary, t)!,
      success: Color.lerp(success, other.success, t)!,
      success100: Color.lerp(success100, other.success100, t)!,
      error: Color.lerp(error, other.error, t)!,
      disabled100: Color.lerp(disabled100, other.disabled100, t)!,
      disabled200: Color.lerp(disabled200, other.disabled200, t)!,
      disabled300: Color.lerp(disabled300, other.disabled300, t)!,
      onBackground: Color.lerp(onBackground, other.onBackground, t)!,
      background: Color.lerp(background, other.background, t)!,
    );
  }

  @override
  ThemeExtension<AppColorsExtension> copyWith({
    Color? primary,
    Color? primaryContainer,
    Color? onPrimary,
    Color? secondary,
    Color? secondaryContainer,
    Color? onSecondary,
    Color? success,
    Color? success100,
    Color? error,
    Color? disabled100,
    Color? disabled200,
    Color? disabled300,
    Color? onBackground,
    Color? background,
  }) {
    return AppColorsExtension(
      primary: primary ?? this.primary,
      primaryContainer: primaryContainer ?? this.primaryContainer,
      onPrimary: onPrimary ?? this.onPrimary,
      secondary: secondary ?? this.secondary,
      secondaryContainer: secondaryContainer ?? this.secondaryContainer,
      onSecondary: onSecondary ?? this.onSecondary,
      success: success ?? this.success,
      success100: success100 ?? this.success100,
      error: error ?? this.error,
      disabled100: disabled100 ?? this.disabled100,
      disabled200: disabled200 ?? this.disabled200,
      disabled300: disabled300 ?? this.disabled300,
      onBackground: onBackground ?? this.onBackground,
      background: background ?? this.background,
    );
  }
}
