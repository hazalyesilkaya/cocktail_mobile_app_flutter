// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/resources/knowledge_data.dart';
import 'package:cocktail_app/widgets/home_page_knowledge.dart';
import 'package:flutter/material.dart';

class Knowledge extends StatelessWidget {
  const Knowledge({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> title = knowledgeList
        .map((item) {
      return item.title;
    })
        .cast<String>()
        .toList();
    List<String> description = knowledgeList
        .map((item) {
      return item.description;
    })
        .cast<String>()
        .toList();
    return knowledgeItems(
      title: title,
      description: description,
    );
  }
}
