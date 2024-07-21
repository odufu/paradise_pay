import 'package:flutter/material.dart';

class CostumPasswordInput extends StatefulWidget {
  final String hintText;
  final TextInputType? inputType;
  final Widget? prefixIcon;
  final bool isPassword;

  const CostumPasswordInput({
    Key? key,
    required this.hintText,
    this.inputType,
    this.prefixIcon,
    this.isPassword = false,
  }) : super(key: key);

  @override
  _CostumPasswordInputState createState() => _CostumPasswordInputState();
}

class _CostumPasswordInputState extends State<CostumPasswordInput> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.inputType,
      obscureText: widget.isPassword ? _isObscured : false,
      decoration: InputDecoration(
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  _isObscured ? Icons.visibility : Icons.visibility_off,
                  color: Colors.grey.withAlpha(80),
                ),
                onPressed: () {
                  setState(() {
                    _isObscured = !_isObscured;
                  });
                },
              )
            : null,
        hintText: widget.hintText,
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.normal),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.blue),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: Colors.grey),
        ),
      ),
    );
  }
}
