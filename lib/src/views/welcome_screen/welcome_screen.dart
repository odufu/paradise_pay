import 'package:flutter/material.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'widgets/info_card.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final PageController _pageController = PageController();

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
        padding: const EdgeInsets.symmetric(vertical: 30),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                itemCount: welcomeText.length,
                itemBuilder: (context, index) {
                  final item = welcomeText[index];
                  return InfoCard(
                    image: item['image']!,
                    heading: item['heading']!,
                    subtitle: item['subTitle']!,
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: _pageController,
              count: welcomeText.length,
              effect: WormEffect(
                dotHeight: 8.0,
                dotWidth: 8.0,
                activeDotColor: Theme.of(context).primaryColor,
              ),
            ),
            const SizedBox(height: 20.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AppButton(actionText: "Sign Up", action: () {}),
                AppButton(actionText: "Login", action: () {})
              ],
            ),
            SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}
