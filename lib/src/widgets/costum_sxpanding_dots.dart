import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomExpandingDotsEffect extends ExpandingDotsEffect {
  CustomExpandingDotsEffect({
    double radius = 50.0,
    double spacing = 8.0,
    double expansionFactor = 3.5,
    double dotWidth = 8.0,
    double dotHeight = 8.0,
    Color dotColor = const Color.fromARGB(255, 29, 9, 9),
    Color activeDotColor = Colors.indigo,
    PaintingStyle paintStyle = PaintingStyle.stroke,
  }) : super(
          radius: radius,
          spacing: spacing,
          expansionFactor: expansionFactor,
          dotWidth: dotWidth,
          dotHeight: dotHeight,
          dotColor: dotColor,
          activeDotColor: activeDotColor,
          paintStyle: paintStyle,
        );

  void paint(Canvas canvas, Size size, int pageIndex, int itemCount,
      double dotOffset, double expansion, bool isCurrent) {
    final paint = Paint()
      ..style = isCurrent ? PaintingStyle.fill : paintStyle
      ..strokeWidth = 1.5
      ..color = isCurrent ? activeDotColor : dotColor;

    final activeRadius = radius * expansionFactor;
    final scaledWidth = dotWidth + (activeRadius - dotWidth) * expansion;

    canvas.drawRRect(
      RRect.fromRectAndRadius(
        Rect.fromLTWH(
          dotOffset * (spacing + dotWidth),
          0.0,
          scaledWidth,
          dotHeight,
        ),
        Radius.circular(dotHeight / 2),
      ),
      paint,
    );
  }
}
