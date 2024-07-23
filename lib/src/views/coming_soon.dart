import 'package:flutter/material.dart';

class ComingSoon extends StatelessWidget {
  const ComingSoon({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        mini: true,
        child: Center(child: Text("+")),
        onPressed: () {},
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
                style: Theme.of(context).textTheme.headlineLarge),
            TextSpan(
                text: "\nImplimentation On The Go, ",
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
              text:
                  "\n\nAs the DEV Team Awaits A Well Researched User Experience by our Awesome UI/UX Team",
              style: TextStyle(color: Colors.grey),
            )
          ]),
        )),
      ),
    );
  }
}
