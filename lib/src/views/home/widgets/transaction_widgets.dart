import 'package:flutter/material.dart';
import 'package:paradise_pay/config/constants.dart';

class TransactionHistroy extends StatelessWidget {
  const TransactionHistroy({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: ClipOval(
              child: Image.asset(PngAssets.kate),
            ),
          ),
          title: const Text("Kate Oshawa",
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: const Text("27 Jan, 2:17 PM"),
          trailing: Text(
            '+ ₦ ${2550.toStringAsFixed(2)}',
            style: const TextStyle(
                color: Colors.green, fontWeight: FontWeight.bold),
          ),
        ),
        ListTile(
          leading: CircleAvatar(
            backgroundColor: Colors.blue,
            child: ClipOval(
              child: Image.asset(PngAssets.usman),
            ),
          ),
          title: Text("Usman Olaja",
              style: TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text("27 Jan, 2:17 PM"),
          trailing: Text(
            '+ ₦ ${2550.toStringAsFixed(2)}',
            style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold),
          ),
        )
      ],
    );
  }
}
