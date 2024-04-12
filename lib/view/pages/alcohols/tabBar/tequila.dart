// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

import '../../../../resources/alcohols_data.dart';
import '../../../../widgets/tab_bar_widget.dart';

class Tequila extends StatelessWidget {
  const Tequila({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> tequilaNames = tequilaList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> tequilaImages = tequilaList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> tequilaDescription = tequilaList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> tequilaFirstStep = tequilaList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> tequilaSecondStep = tequilaList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> tequilaIngredients = tequilaList
        .map((item) {
          return item.ingredient;
        })
        .cast<String>()
        .toList();
    List<int?> tequilaId = tequilaList.map((item) {
      return item.id;
    }).toList();
    return Scaffold(
        body: SingleChildScrollView(
      child: tabBarItem(
          image: tequilaImages,
          name: tequilaNames,
          description: tequilaDescription,
          firstStep: tequilaFirstStep,
          secondStep: tequilaSecondStep,
          ingredient: tequilaIngredients,
          context: context,
          id: tequilaId,
          barList: tequilaList),
    ));
  }
}
