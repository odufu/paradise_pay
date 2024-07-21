// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'color_schemes.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColorScheme.lightColorScheme.primary,
    scaffoldBackgroundColor:
        AppColorScheme.lightColorScheme.surface, // Updated to use surface
    appBarTheme: AppBarTheme(
      color: AppColorScheme.lightColorScheme.secondary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColorScheme.lightColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
      minWidth: 327,
    ),
    textTheme: GoogleFonts.poppinsTextTheme(),
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
      buttonColor: AppColorScheme.lightColorScheme.primary,
      textTheme: ButtonTextTheme.accent,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
          color: AppColorScheme
              .darkColorScheme.onSurface), // Updated to use onSurface
      bodyMedium: TextStyle(
          fontSize: 15,
          color: AppColorScheme
              .darkColorScheme.onSurface), // Updated to use onSurface
      headlineLarge: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
      titleMedium: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.grey[300],
      ),
    ),
    colorScheme: AppColorScheme.darkColorScheme
        .copyWith(error: AppColorScheme.darkColorScheme.error)
        .copyWith(secondary: AppColorScheme.darkColorScheme.secondary)
        .copyWith(
            surface: AppColorScheme
                .darkColorScheme.surface), // Updated to use surface
  );
}
