import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/config/themes/color_schemes.dart';
import 'package:paradise_pay/src/views/welcome_screen/welcome_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
    return Scaffold(
      backgroundColor: AppColorScheme.lightColorScheme.primary,
      body: Stack(
        children: [
          Positioned.fill(child: SvgPicture.asset(SvgAssets.splashBackground)),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  SvgAssets.logo,
                  width: SvgAssets.companyNameWidth,
                  height: SvgAssets.logoHeight,
                ),
                const SizedBox(height: SvgAssets.logoCompanyNameMargin),
                SvgPicture.asset(SvgAssets.companyName)
              ],
            ),
          )
        ],
      ),
    );
  }
}
