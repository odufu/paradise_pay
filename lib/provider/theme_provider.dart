import 'package:flutter/material.dart';
import '../config/theme.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _selectedTheme;

  ThemeProvider({required bool isDarkMode})
      : _selectedTheme =
            isDarkMode ? AppThemes.darkTheme : AppThemes.lightTheme;

  ThemeData get getTheme => _selectedTheme;

  void swapTheme() {
    if (_selectedTheme == AppThemes.darkTheme) {
      _selectedTheme = AppThemes.lightTheme;
    } else {
      _selectedTheme = AppThemes.darkTheme;
    }
    notifyListeners();
  }
}
