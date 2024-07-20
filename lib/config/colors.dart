import 'package:flutter/material.dart';

class LightThemeColors {
  static const Color primary = Color(0xFF0063F4); // Main color
  static const Color secondary =
      Color(0xFF03DAC6); // Teal for secondary elements
  static const Color surface = Color(0xFFFFFFFF); // Light surface color
  static const Color background = Color(0xFFF5F5F5); // Light background color
  static const Color error = Color(0xFFB00020); // Red for error states
  static const Color onPrimary =
      Color(0xFFFFFFFF); // White text on primary color
  static const Color onSecondary =
      Color(0xFF000000); // Black text on secondary color
  static const Color onSurface =
      Color(0xFF000000); // Black text on light surface
  static const Color onBackground =
      Color(0xFF000000); // Black text on light background
  static const Color onError = Color(0xFFFFFFFF); // White text on error color
}

class DarkThemeColors {
  static const Color primary = Color.fromARGB(255, 77, 78, 80); // Main color
  static const Color secondary =
      Color(0xFF03DAC6); // Teal for secondary elements
  static const Color surface = Color(0xFF121212); // Dark surface color
  static const Color background =
      Color(0xFF121212); // Matching the surface color for uniformity
  static const Color error = Color(0xFFCF6679); // Red for error states
  static const Color onPrimary =
      Color(0xFF000000); // Black text on primary color
  static const Color onSecondary =
      Color(0xFF000000); // Black text on secondary color
  static const Color onSurface =
      Color(0xFFE0E0E0); // Light grey for text on dark surface
  static const Color onBackground =
      Color(0xFFE0E0E0); // Light grey for text on dark background
  static const Color onError = Color(0xFF000000); // Black text on error color
}
