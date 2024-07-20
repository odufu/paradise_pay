import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';

class AppButton extends StatelessWidget {
  final String actionText;
  final VoidCallback action;
  final Color? color;
  final Color? borderColor;
  final Color? backGroundColor;

  const AppButton(
      {super.key,
      required this.actionText,
      required this.action,
      this.color,
      this.borderColor,
      this.backGroundColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: AppConstants.kButtonWidth,
      height: AppConstants.kButtonHeight,
      child: ElevatedButton(
        onPressed: action,
        style: ElevatedButton.styleFrom(
          backgroundColor:
              backGroundColor ?? Theme.of(context).colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          side: BorderSide(
            color: borderColor ?? Theme.of(context).colorScheme.primary,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 12.0),
        ),
        child: Text(
          actionText,
          style: TextStyle(
            color: color ?? Theme.of(context).colorScheme.onPrimary,
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
