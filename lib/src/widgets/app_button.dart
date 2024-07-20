import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String actionText;
  final VoidCallback action;

  const AppButton({
    super.key,
    required this.actionText,
    required this.action,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: action,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      ),
      child: Text(
        actionText,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    );
  }
}
