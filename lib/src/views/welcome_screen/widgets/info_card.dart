import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:paradise_pay/config/constants.dart';

class InfoCard extends StatelessWidget {
  final String image;
  final String heading;
  final String subtitle;

  const InfoCard({
    required this.image,
    required this.heading,
    required this.subtitle,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: AppConstants.kPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(image), // or Image.asset if using local assets
            const SizedBox(height: AppConstants.kMargin2),
            Text(
              heading,
              style: Theme.of(context).textTheme.titleMedium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: AppConstants.kMargin2),
            Text(
              subtitle,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
