import 'package:flutter/material.dart';
import 'package:paradise_pay/config/colors.dart';

class AppColorScheme {
  static const ColorScheme darkColorScheme = ColorScheme(
   primary: DarkThemeColors.primary,
    secondary: DarkThemeColors.secondary,
    surface: DarkThemeColors.surface,
    // Using surface for background color as background is deprecated
    error: DarkThemeColors.error,
    onPrimary: DarkThemeColors.onPrimary,
    onSecondary: DarkThemeColors.onSecondary,
    onSurface: DarkThemeColors.onSurface,
    onError: DarkThemeColors.onError,
    brightness: Brightness.dark,
  );
  static const ColorScheme lightColorScheme = ColorScheme(
      primary: LightThemeColors.primary,
    secondary: LightThemeColors.secondary,
    surface: LightThemeColors.surface,
    error: LightThemeColors.error,
    onPrimary: LightThemeColors.onPrimary,
    onSecondary: LightThemeColors.onSecondary,
    onSurface: LightThemeColors.onSurface,
    onError: LightThemeColors.onError,
    brightness: Brightness.light,
  );
}
