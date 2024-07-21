import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/config/constants.dart';

class CountryCodePicker extends StatelessWidget {
  const CountryCodePicker({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 80,
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.withAlpha(1)),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8),
          SvgPicture.asset(SvgAssets.nigeria),
          const SizedBox(width: 8),
          const Text('+234'),
        ],
      ),
    );
  }
}
