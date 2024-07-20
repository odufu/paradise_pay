import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:paradise_pay/src/widgets/page_indicator.dart';
import 'widgets/info_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();

//DUMMY DETAILS WHICH WILL BE CHANGED LATER

  static const List<Map<String, String>> welcomeText = [
    {
      "image": "assets/images/welcome1.svg",
      "heading": "Easiest Way To Receive Money From Your Buyer",
      "subTitle": "Scan QR codes to make a direct transaction."
    },
    {
      "image": "assets/images/welcome2.svg",
      "heading": "Send and Receive Money",
      "subTitle": "Send money by scanning QR codes for direct swift payment."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: AppConstants.kPadding, horizontal: AppConstants.kPadding),
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: PageView.builder(
                controller: _pageController,
                itemCount: welcomeText.length,
                itemBuilder: (context, index) {
                  final item = welcomeText[index];
                  return Column(
                    children: [
                      InfoCard(
                        image: item['image']!,
                        heading: item['heading']!,
                        subtitle: item['subTitle']!,
                      ),
                      PageIndicator(
                          pageController: _pageController,
                          welcomeText: welcomeText),
                      const SizedBox(height: AppConstants.kMargin),
                    ],
                  );
                },
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(
                    actionText: AppConstants.kSignupButtonIndicator,
                    backGroundColor: Theme.of(context).colorScheme.primary,
                    action: () {}),
                const SizedBox(
                  height: AppConstants.kMargin2,
                ),
                AppButton(
                    actionText: AppConstants.kLoginButtonIndicator,
                    backGroundColor: Theme.of(context).colorScheme.onPrimary,
                    color: Theme.of(context).colorScheme.primary,
                    borderColor: Theme.of(context).colorScheme.primary,
                    action: () {})
              ],
            ),
          ],
        ),
      ),
    );
  }
}
