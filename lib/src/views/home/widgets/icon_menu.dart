import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:paradise_pay/config/constants.dart';

class IconMenu extends StatelessWidget {
  const IconMenu({
    required this.name,
    required this.svgIcon,
    super.key,
  });

  final String name;
  final String svgIcon;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onDoubleTap: () {
        if (kDebugMode) {
          print("Yet to Implement " + name);
        }
      },
      child: Container(
        width: 50,
        height: 83,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              svgIcon,
              width: 25,
              height: 25,
            ),
            SizedBox(height: 5),
            Text(
              name,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 10),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
