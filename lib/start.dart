import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class StartSocialMedia extends StatelessWidget {
  String socialMediaLink;
  StartSocialMedia({
    super.key,
    required this.socialMediaLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 3, 7, 30),
      ),
      body: Center(
        child: ElevatedButton(
            style: ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.deepOrange)),
            onPressed: () {
              launchUrl(Uri.parse(socialMediaLink),
                  mode: LaunchMode.externalApplication);
            },
            child: Text("Start Social Media")),
      ),
    );
  }
}
