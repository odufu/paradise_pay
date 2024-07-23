
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/src/views/home/home_screen.dart';
import 'package:paradise_pay/src/views/signup_screen/signup_screen.dart';
import 'package:paradise_pay/src/views/signup_screen/widgets/costom_divider.dart';
import 'package:paradise_pay/src/views/signup_screen/widgets/o_auth.dart';
import 'package:paradise_pay/src/widgets/app_button.dart';
import 'package:paradise_pay/src/widgets/costom_text_field.dart';
import '../../../../../config/constants.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Log in to your account"),
            const SizedBox(height: AppConstants.kMargin2),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OAuthButton(
                    svgUrl: SvgAssets.googleIcon,
                    actionText: "Google",
                    onTap: () {
                      // Define the action for Google login
                      print('Google login tapped');
                    }),
                SizedBox(width: AppConstants.kMargin2),
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
            const SizedBox(height: AppConstants.kAppBigPadding),
            const CustomTextField(
              hintText: 'Email Address',
              inputType: TextInputType.emailAddress,
            ),
            const SizedBox(height: AppConstants.kPadding2),
            CustomTextField(
              hintText: 'Password',
              inputType: TextInputType.visiblePassword,
              icon: IconButton(
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                ),
                onPressed: _togglePasswordVisibility,
              ),
              prefixIcon: const Icon(Icons.lock),
            ),
            const SizedBox(height: AppConstants.kAppBigPadding),
            const SizedBox(
              height: AppConstants.kAppBigPadding,
            ),
            const SizedBox(
              height: AppConstants.kAppBigPadding,
            ),
            AppButton(
                actionText: "LOG IN",
                action: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }),
            const SizedBox(height: AppConstants.kPadding),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don't have an account? ",
                        style: Theme.of(context).textTheme.bodyMedium,
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: TextStyle(
                          color: Theme.of(context).colorScheme.primary,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignUpScreen()),
                            );
                          },
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: AppConstants.kAppBigPadding,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  child: SvgPicture.asset(SvgAssets.face),
                  onTap: () {
                    print("Implement Face Id");
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
