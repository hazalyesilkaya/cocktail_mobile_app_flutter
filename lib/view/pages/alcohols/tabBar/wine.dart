// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../../resources/alcohols_data.dart';
import '../../../../widgets/tab_bar_widget.dart';


class Wine extends StatelessWidget {
  const Wine({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> wineNames = wineList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> wineImages = wineList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> wineDescription = wineList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> wineFirstStep = wineList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> wineSecondStep = wineList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> wineIngredients = wineList
        .map((item) {
      return item.ingredient;
    })
        .cast<String>()
        .toList();
    return Scaffold(
        body: SingleChildScrollView(
          child: tabBarItem(
              image: wineImages,
              name: wineNames,
              description: wineDescription,
              firstStep: wineFirstStep,
              secondStep: wineSecondStep,
            ingredient: wineIngredients,
            context: context
             ),
        ));
  }
}
