import 'package:flutter/material.dart';
import 'package:paradise_pay/config/themes/themes.dart';
import 'package:paradise_pay/provider/theme_provider.dart';
import 'package:paradise_pay/src/views/home/home_screen.dart';
import 'package:paradise_pay/src/views/login/login_screen.dart';
import 'package:paradise_pay/src/views/otp/otp_screen.dart';
import 'package:paradise_pay/src/views/signup_screen/signup_screen.dart';
import 'package:paradise_pay/src/views/splash_screen.dart';
import 'package:paradise_pay/src/views/success/email_verification_success.dart';
import 'package:paradise_pay/src/views/welcome_screen/welcome_screen.dart';
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
