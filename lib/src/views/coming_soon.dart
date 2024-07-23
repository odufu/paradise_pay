import 'package:flutter/material.dart';
import 'package:paradise_pay/provider/theme_provider.dart';
import 'package:provider/provider.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return FloatingActionButton(
            mini: true,
            child: Center(child: Icon(Icons.dark_mode)),
            onPressed: () {
              themeProvider.swapTheme();
            },
          );
        },
      ),
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
        padding: EdgeInsets.all(50),
        child: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: TextSpan(children: [
              TextSpan(
                text: "Coming Soon",
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              TextSpan(
                text: "\nImplementation On The Go, ",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              TextSpan(
                text:
                    "\n\nAs the DEV Team Awaits A Well Researched User Experience by our Awesome UI/UX Team",
                style: TextStyle(color: Colors.grey),
              ),
              TextSpan(
                text:
                    "\n\nClick the Button Below to Change Between DARK/LIGHT Theme Mode",
                style: TextStyle(color: Theme.of(context).colorScheme.error),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
