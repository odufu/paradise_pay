import 'package:flutter/material.dart';

class QuickBuildMethods {

Widget _buildQuickAction(IconData icon, String label) {
  return InkWell(
    onTap: () {
      print("Yet to Imploment " + label);
    },
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blue[50],
          child: Icon(icon, color: Color(0xFF0063F4)),
        ),
        SizedBox(height: 5),
        Text(label,
            textAlign: TextAlign.center, style: TextStyle(fontSize: 12)),
      ],
    ),
  );
}


}