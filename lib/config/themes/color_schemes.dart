import 'package:flutter/material.dart';
import 'package:paradise_pay/config/colors.dart';

class AppColorScheme {
  static const ColorScheme lightColorScheme = ColorScheme(
    primary: AppColors.mainBlue,
    secondary: AppColors.mainRed,
    surface: AppColors.white,
    error: AppColors.mainRed,
    onPrimary: AppColors.mainBlue,
    onSecondary: AppColors.white,
    onSurface: Color(0xFF212226),
    onError: AppColors.mainError,
    brightness: Brightness.light,
  );

  static const ColorScheme darkColorScheme = ColorScheme(
    primary: Color(0xFF0063F4),
    secondary: Color(0xFFFF0101),
    surface: Color(0xFF292D32),
    error: Color(0xFFCF6679),
    onPrimary: Color(0xFF212226),
    onSecondary: Color(0xFF212226),
    onSurface: Color(0xFFEBF3FF),
    onError: Color(0xFF212226),
    brightness: Brightness.dark,
  );
}
