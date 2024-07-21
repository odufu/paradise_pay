import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../../config/constants.dart';

class OAuthButton extends StatelessWidget {
  const OAuthButton({
    super.key,
    required this.svgUrl,
    required this.actionText,
    required this.onTap,
  });

  final String svgUrl;
  final String actionText;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: const BorderRadius.all(Radius.circular(10)),
      child: Container(
        width: 130,
        height: 31,
        decoration: BoxDecoration(
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
            width: .5,
            color: Theme.of(context).colorScheme.onSurface.withAlpha(25),
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: AppConstants.kPadding2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(svgUrl),
              const SizedBox(width: AppConstants.kPadding2),
              Text(actionText),
            ],
          ),
        ),
      ),
    );
  }
}
