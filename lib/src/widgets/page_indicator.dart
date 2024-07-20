import 'package:flutter/material.dart';
import 'package:paradise_pay/src/widgets/costum_sxpanding_dots.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required PageController pageController,
    required this.welcomeText,
  }) : _pageController = pageController;

  final PageController _pageController;
  final List<Map<String, String>> welcomeText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SmoothPageIndicator(
          controller: _pageController,
          count: welcomeText.length,
          effect: CustomExpandingDotsEffect(
            dotHeight: 8.0,
            dotWidth: 8.0,
            dotColor: Theme.of(context).colorScheme.primary,
            paintStyle: PaintingStyle.stroke,
            activeDotColor: Theme.of(context).colorScheme.primary,
          ),
        ),
        SmoothPageIndicator(
          controller: _pageController,
          count: welcomeText.length,
          effect: CustomExpandingDotsEffect(
            dotHeight: 8.0,
            dotWidth: 8.0,
            dotColor: Colors.white.withAlpha(0),
            paintStyle: PaintingStyle.fill,
            activeDotColor: Theme.of(context).colorScheme.primary,
          ),
        )
      ],
    );
  }
}
