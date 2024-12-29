import 'package:flutter/material.dart';
import 'package:my_contacts/widgets/contacts_grid.dart';
import 'package:url_launcher/url_launcher.dart';

import 'widgets/social_media_icons.dart';

final Uri _url = Uri.parse('https://flutter.dev');

class MyContacts extends StatelessWidget {
  MyContacts({super.key});

  Map<String, String> socialMedia = {
    'facebook.jpg': 'https://www.facebook.com/alaa.karem.144',
    'github.png': 'https://github.com/alaa-karem',
    'linkedin.webp': 'https://www.linkedin.com/in/alaa-karem-602860223/',
    'whatsapp.png': 'https://wa.me/+201061585547',
    'insta.webp': 'https://www.instagram.com/alaa_.karem/profilecard/?igsh=MjU4ZTBoYmE0cXR5',
    'telegram.png': 't.me/Alaa_Karem',
  };

  @override
  Widget build(BuildContext mycontext) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 33, 35, 41),
      body: SizedBox(
        width: double.infinity,
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 80,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/alaa.jpg'),
                radius: 100,
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Alaa Karem',
                style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                // mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    '+201061585547',
                    style: TextStyle(fontSize: 22, color: Colors.grey),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  IconButton(
                    icon: Icon(
                      Icons.phone,
                      size: 30,
                      color: Colors.grey,
                    ),
                    onPressed: () {

                      // launchUrl(Uri.parse('tel:+201061585547'));
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              ContactGrid(socialMedia: socialMedia)
            ],
          ),
        ),
      ),
    );
  }
}