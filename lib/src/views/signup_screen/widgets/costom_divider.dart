import 'package:flutter/material.dart';

class CostomDivider extends StatelessWidget {
  const CostomDivider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Divider(
          thickness: 1,
          color: Theme.of(context).colorScheme.onSurface.withAlpha(35),
          indent: 40,
          endIndent: 40,
        ),
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              shape: BoxShape.circle,
              border: Border.all(
                color: Theme.of(context).colorScheme.onSurface.withAlpha(35),
              )),
          child: Text(
            "Or",
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }
}
