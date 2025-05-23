import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ShoutOut extends StatelessWidget {
  const ShoutOut({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
      onTap: () {
        launchURL('https://good.store');
      },
      child: MediaQuery.withNoTextScaling(
          child: Container(
        color: Theme.of(context).colorScheme.secondary,
        padding: const EdgeInsets.all(16.0),
        child: Text(
          "Special thanks to Hank Green for supporting this app's development. \n"
          "Support ethical businesses by shopping at good.store for coffee, tea, socks, soap, and more! "
          "All profits go to charity. \n"
          "Tap to check it out!",
          style: TextStyle(
              color: Theme.of(context).colorScheme.onSecondary, fontSize: 11),
          textAlign: TextAlign.center,
        ),
      ))
      );
}

class ShoutOutSmall extends StatelessWidget {
  const ShoutOutSmall({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          launchURL('https://good.store');
        },
        child: MediaQuery.withNoTextScaling(
            child: Container(
          color: Theme.of(context).colorScheme.secondary,
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Support ethical businesses by shopping at good.store. All profits go to charity.",
            style: TextStyle(
                color: Theme.of(context).colorScheme.onSecondary, fontSize: 11),
            textAlign: TextAlign.center,
          ),
        )),
      );
}

void launchURL(String url) async {
  final uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw 'Could not launch $url';
  }
}
