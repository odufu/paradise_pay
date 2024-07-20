// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'color_schemes.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColorScheme.lightColorScheme.primary,
    scaffoldBackgroundColor:
        AppColorScheme.lightColorScheme.surface, // Updated to use surface
    appBarTheme: AppBarTheme(
      color: AppColorScheme.lightColorScheme.primary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColorScheme.lightColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColorScheme
              .lightColorScheme.onSurface), // Updated to use onSurface
      bodyMedium: TextStyle(
          color: AppColorScheme
              .lightColorScheme.onSurface), // Updated to use onSurface
    ),
    colorScheme: AppColorScheme.lightColorScheme
        .copyWith(error: AppColorScheme.lightColorScheme.error)
        .copyWith(secondary: AppColorScheme.lightColorScheme.secondary)
        .copyWith(
            surface: AppColorScheme
                .lightColorScheme.surface), // Updated to use surface
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColorScheme.darkColorScheme.primary,
    scaffoldBackgroundColor:
        AppColorScheme.darkColorScheme.surface, // Updated to use surface
    appBarTheme: AppBarTheme(
      color: AppColorScheme.darkColorScheme.onSecondary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColorScheme.darkColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColorScheme
              .darkColorScheme.onSurface), // Updated to use onSurface
      bodyMedium: TextStyle(
          color: AppColorScheme
              .darkColorScheme.onSurface), // Updated to use onSurface
    ),
    colorScheme: AppColorScheme.darkColorScheme
        .copyWith(error: AppColorScheme.darkColorScheme.error)
        .copyWith(secondary: AppColorScheme.darkColorScheme.secondary)
        .copyWith(
            surface: AppColorScheme
                .darkColorScheme.surface), // Updated to use surface
  );
}
