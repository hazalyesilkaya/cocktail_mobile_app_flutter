// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../resources/alcohols_data.dart';
import '../../../../widgets/tab_bar_widget.dart';

class Liqueur extends StatelessWidget {
  const Liqueur({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> liqueurNames = liqueurList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> liqueurImages = liqueurList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> liqueurDescription = liqueurList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> liqueurSteps = liqueurList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> liqueurSecondStep = liqueurList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> liqueurIngredients = liqueurList
        .map((item) {
          return item.ingredient;
        })
        .cast<String>()
        .toList();
    List<int?> liqueurId = liqueurList.map((item) {
      return item.id;
    }).toList();
    return Scaffold(
        body: SingleChildScrollView(
      child: tabBarItem(
          image: liqueurImages,
          name: liqueurNames,
          description: liqueurDescription,
          firstStep: liqueurSteps,
          secondStep: liqueurSecondStep,
          ingredient: liqueurIngredients,
          context: context,
          id: liqueurId,
          barList: liqueurList),
    ));
  }
}
