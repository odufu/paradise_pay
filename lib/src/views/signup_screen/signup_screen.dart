import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:paradise_pay/src/views/login/login_screen.dart';
import 'package:paradise_pay/src/views/otp/otp_screen.dart';
import 'package:paradise_pay/src/views/signup_screen/widgets/country_code_picker.dart';
import 'package:paradise_pay/src/views/signup_screen/widgets/terms_and_condition_check.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:paradise_pay/src/widgets/costom_text_field.dart';
import 'package:paradise_pay/src/widgets/text_input.dart';
import './widgets/costom_divider.dart';
import '../../../../../config/constants.dart';
import './widgets/o_auth.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.surface,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: AppConstants.kPadding, horizontal: AppConstants.kPadding),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(AppConstants.kSignUpActionPhrase),
                ],
              ),
              const SizedBox(height: AppConstants.kMargin2),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  OAuthButton(
                    svgUrl: SvgAssets.googleIcon,
                    actionText: "Google",
                    onTap: () {
                      // Define the action for Google login
                      print('Google login tapped');
                    },
                  ),
                  SizedBox(
                    width: AppConstants.kMargin2,
                  ),
                  OAuthButton(
                      svgUrl: SvgAssets.appleIcon,
                      actionText: "Apple",
                      onTap: () {
                        // Define the action for Google login
                        print('Apple login tapped');
                      }),
                ],
              ),
              const SizedBox(height: AppConstants.kAppBigPadding),
              const CostomDivider(),
              const SizedBox(
                height: AppConstants.kAppBigPadding,
              ),
              Column(
                children: [
                  const CustomTextField(
                    hintText: 'Full Name',
                    inputType: TextInputType.name,
                  ),
                  const SizedBox(
                    height: AppConstants.kPadding2,
                  ),
                  const CustomTextField(
                    hintText: 'Email Address',
                    inputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: AppConstants.kPadding2,
                  ),
                  const CustomTextField(
                    prefixIcon: CountryCodePicker(),
                    hintText: 'Phone Number',
                    inputType: TextInputType.phone,
                  ),
                  const SizedBox(
                    height: AppConstants.kPadding2,
                  ),
                  const CostumPasswordInput(
                    hintText: 'Password',
                    isPassword: true,
                    prefixIcon: Icon(Icons.lock),
                  ),
                  const SizedBox(
                    height: AppConstants.kAppBigPadding,
                  ),
                  TermsAndConditionsRow(),
                  const SizedBox(
                    height: AppConstants.kAppBigPadding,
                  ),
                  AppButton(
                      actionText: "CREATE ACCOUNT",
                      action: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => OtpScreen()),
                        );
                      }),
                  const SizedBox(
                    height: AppConstants.kButtonHeight,
                  ),
                  RichText(
                      text: TextSpan(children: [
                    TextSpan(
                        text: "Already have an account? ",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.onSurface)),
                    TextSpan(
                        text: "Sign in",
                        style: TextStyle(
                            color: Theme.of(context).colorScheme.primary),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            );
                          })
                  ]))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
