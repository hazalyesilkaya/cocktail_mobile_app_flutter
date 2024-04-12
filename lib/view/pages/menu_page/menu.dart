// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../widgets/make_menu_items_widget.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => MenuState();
}

class MenuState extends State<Menu> {
  final iconList = [
    Icons.add,
    Icons.ac_unit_outlined,
    Icons.access_alarms_rounded
  ];
  final menuItemNames = [
    "Favoriler",
    "İletişim Kur",
    "Yorum Yaz"
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 35.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 3,
              itemBuilder: (context, index) =>
                  menuItems(context, iconList, index, menuItemNames),
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Container(
              height: 150,
              width: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: const Image(
                image: AssetImage("assets/images/pages_img/wine_gif.gif"),
                fit: BoxFit.cover,
              )),
        ],
      ),
    );
  }
}

menuItems(context, iconList, index, menuItemNames) {
  return makeMenuItem(
      context: context, icon: iconList[index], name: menuItemNames[index]);
}

