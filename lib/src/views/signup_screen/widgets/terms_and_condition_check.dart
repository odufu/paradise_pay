import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TermsAndConditionsRow extends StatefulWidget {
  @override
  _TermsAndConditionsRowState createState() => _TermsAndConditionsRowState();
}

class _TermsAndConditionsRowState extends State<TermsAndConditionsRow> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (bool? newValue) {
            setState(() {
              _isChecked = newValue ?? false;
            });
          },
        ),
        Expanded(
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                    text: 'By creating an account, I agree to our ',
                    style: TextStyle(
                        color: Theme.of(context).colorScheme.onSurface)),
                TextSpan(
                  text: 'Terms and conditions',
                  style: TextStyle(color: Colors.blue),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle the tap event, e.g., navigate to terms and conditions page
                      print('Terms and conditions tapped');
                    },
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
