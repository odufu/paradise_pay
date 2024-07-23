import 'package:flutter/material.dart';
import 'package:paradise_pay/config/themes/themes.dart';
import 'package:paradise_pay/provider/theme_provider.dart';
import 'package:paradise_pay/src/views/coming_soon.dart';
import 'package:paradise_pay/src/views/splash_screen.dart';
import "package:provider/provider.dart";

void main() {
  runApp(ChangeNotifierProvider(
    create: (_) => ThemeProvider(isDarkMode: false),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(builder: (context, themeProvider, child) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'ParadisePay',
        theme: AppThemes.lightTheme,
        darkTheme: AppThemes.darkTheme,
        themeMode: ThemeMode.dark,
        home: SplashScreen(),
      );
    });
  }
}
