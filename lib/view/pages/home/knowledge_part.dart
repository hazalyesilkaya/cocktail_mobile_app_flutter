// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../widgets/home_page_knowledge.dart';

class Knowledge extends StatefulWidget {
  const Knowledge({super.key});

  @override
  State<Knowledge> createState() => KnowledgeState();
}

class KnowledgeState extends State<Knowledge> {
  final menuItemNames = [
    "Viski",
    "Bira",
    "Şarap",
    "Tekila",
    "Likör",
    "Votka",
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 4.0),
            child: ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: menuItemNames.length,
              itemBuilder: (context, index) =>
                  menuItems(context, index, menuItemNames),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}

menuItems(context, index, menuItemNames) {
  return makeHomeItem(
      context: context, name: menuItemNames[index]);
}

