import 'package:flutter/material.dart';

class OTPMessage extends StatelessWidget {
  final String email;
  OTPMessage({required this.email});
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          TextSpan(
            text: "Enter OTP confirmation code sent to your email ",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
          TextSpan(
            text: email,
            style: TextStyle(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextSpan(
            text: " to verify your account.",
            style: TextStyle(
              color: Theme.of(context).colorScheme.secondary,
            ),
          ),
        ],
      ),
    );
  }
}
