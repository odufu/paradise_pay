import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';
import 'package:paradise_pay/src/views/otp/widget/otp_input.dart';
import 'package:paradise_pay/src/views/otp/widget/otp_message.dart';
import 'package:paradise_pay/src/views/success/email_verification_success.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(AppConstants.kAppBigPadding),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              OTPMessage(
                email: "add****n@gmail.com",
              ),
              SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              OTPInput(),
              SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              const SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              AppButton(
                  actionText: "CONTINUE",
                  action: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => EmailVerificationSuccess()),
                    );
                  }),
              const SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              RichText(
                  text: TextSpan(children: [
                const TextSpan(
                    text: "Didn't recieve?",
                    style: TextStyle(color: Colors.grey)),
                TextSpan(
                    text: "Resend Code in 59s",
                    style:
                        TextStyle(color: Theme.of(context).colorScheme.primary),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        // Handle the tap event, e.g., navigate to terms and conditions page
                        print('Impliment resend request');
                      })
              ]))
            ],
          ),
        ),
      ),
    );
  }
}
