import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType? inputType;
  final Widget? icon;
  final Widget? prefixIcon;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      this.inputType,
      this.icon,
      this.prefixIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: inputType,
      decoration: InputDecoration(
        prefixIcon: prefixIcon,
        suffixIcon: icon,
        hintText: hintText,
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
