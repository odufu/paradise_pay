import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/config/themes/color_schemes.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
