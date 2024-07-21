import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/views/home/home_screen.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';

class EmailVerificationSuccess extends StatelessWidget {
  const EmailVerificationSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(25),
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Column(
                    children: [
                      SvgPicture.asset(SvgAssets.success),
                      Text(
                        "Success!",
                        style: Theme.of(context).textTheme.headlineMedium,
                      ),
                      Text(
                        "Email successfully verified!",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: AppConstants.kAppBigPadding,
            ),
            AppButton(
                actionText: "CNTINUE",
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                })
          ],
        ),
      ),
    );
  }
}
