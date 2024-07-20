// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'color_schemes.dart';

class AppThemes {
  static final ThemeData lightTheme = ThemeData(
    primaryColor: AppColorScheme.lightColorScheme.primary,
    scaffoldBackgroundColor: AppColorScheme.lightColorScheme.background,
    appBarTheme: AppBarTheme(
      color: AppColorScheme.lightColorScheme.primary,
      backgroundColor: AppColorScheme.lightColorScheme.secondary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColorScheme.lightColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(color: AppColorScheme.lightColorScheme.onBackground),
      bodyMedium:
          TextStyle(color: AppColorScheme.lightColorScheme.onBackground),
    ),
    colorScheme: AppColorScheme.lightColorScheme
        .copyWith(error: AppColorScheme.lightColorScheme.error)
        .copyWith(secondary: AppColorScheme.lightColorScheme.secondary)
        .copyWith(background: AppColorScheme.lightColorScheme.background),
  );

  static final ThemeData darkTheme = ThemeData(
    primaryColor: AppColorScheme.darkColorScheme.primary,
    scaffoldBackgroundColor: AppColorScheme.darkColorScheme.background,
    appBarTheme: AppBarTheme(
      color: AppColorScheme.darkColorScheme.primary,
      backgroundColor: AppColorScheme.darkColorScheme.onSecondary,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: AppColorScheme.darkColorScheme.primary,
      textTheme: ButtonTextTheme.primary,
    ),
    textTheme: TextTheme(
      // ignore: deprecated_member_use
      bodyLarge: TextStyle(color: AppColorScheme.darkColorScheme.onBackground),
      bodyMedium: TextStyle(color: AppColorScheme.darkColorScheme.onBackground),
    ),
    colorScheme: AppColorScheme.darkColorScheme
        .copyWith(error: AppColorScheme.darkColorScheme.error)
        .copyWith(secondary: AppColorScheme.darkColorScheme.secondary)
        .copyWith(background: AppColorScheme.darkColorScheme.background),
  );
}
