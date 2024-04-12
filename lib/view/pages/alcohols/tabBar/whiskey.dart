// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../resources/alcohols_data.dart';
import '../../../../widgets/tab_bar_widget.dart';

class Whiskey extends StatelessWidget {
  const Whiskey({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> whiskeyNames = whiskeyList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> whiskeyImages = whiskeyList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> whiskeyDescription = whiskeyList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> whiskeyFirstStep = whiskeyList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> whiskeySecondStep = whiskeyList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> whiskeyIngredients = whiskeyList
        .map((item) {
          return item.ingredient;
        })
        .cast<String>()
        .toList();
    List<int?> whiskeyId = whiskeyList.map((item) {
      return item.id;
    }).toList();
    return Scaffold(
        body: SingleChildScrollView(
      child: tabBarItem(
          image: whiskeyImages,
          name: whiskeyNames,
          description: whiskeyDescription,
          firstStep: whiskeyFirstStep,
          secondStep: whiskeySecondStep,
          ingredient: whiskeyIngredients,
          context: context,
          id: whiskeyId,
          barList: whiskeyList),
    ));
  }
}
