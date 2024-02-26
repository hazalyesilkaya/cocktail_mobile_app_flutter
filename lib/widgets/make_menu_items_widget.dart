import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../animations/animation.dart';
import '../view/pages/menu_page/favorites_page.dart';
import '../view/pages/menu_page/notes_page.dart';

Widget makeMenuItem({context, icon, name}) {
  return ListTile(
      title: Center(
        child: FadeAnimation(
          0.3,
          Container(
            width: 330.0,
            padding: const EdgeInsets.fromLTRB(7.0, 14.0, 7.0,1.0),
            decoration: BoxDecoration(
                color: Colors.red[200],
                borderRadius: BorderRadius.circular(20)),
            child: Row(children: [
              SizedBox(
                width: 80,
                child: Icon(
                  icon,
                  size: 30,
                  color: Colors.black87,
                ),
              ),
              Container(
                width: 210,
                alignment: Alignment.centerRight,
                child: Text(
                  name,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      color: Colors.black87,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      fontFamily: "PetitFormal"),
                ),
              ),
            ]),
          ),
        ),
      ),
      onTap: () async {
        if (icon == Icons.add) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Favorites()));
        } else if (icon == Icons.account_circle) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => const Notes()));
        } else if (icon == Icons.ac_unit_outlined) {
          final url = Uri(
            scheme: "mailto",
            path: "yesilkayahazal@gmail.com",
          );
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          } else {
            // ignore: avoid_print
            print("Can't launch $url");
          }
        } else {
          final url = Uri.parse(
            'https://play.google.com/store/apps/details?id=com.spotify.music',
          );
          if (await canLaunchUrl(url)) {
            launchUrl(url);
          } else {
            // ignore: avoid_print
            print("Can't launch $url");
          }
        }
      });
}
