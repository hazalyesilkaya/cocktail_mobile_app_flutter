// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/resources/alcohols_data.dart';
import 'package:cocktail_app/widgets/tab_bar_widget.dart';
import 'package:flutter/material.dart';



class Beer extends StatelessWidget {
  const Beer({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> beerNames = beerList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> beerImages = beerList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> beerDescription = beerList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> beerFirstStep = beerList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> beerSecondStep = beerList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> beerIngredients = beerList
        .map((item) {
      return item.ingredient;
    })
        .cast<String>()
        .toList();
    return Scaffold(
        body: tabBarItem(
            name: beerNames,
            image: beerImages,
            description: beerDescription,
            firstStep: beerFirstStep,
            secondStep: beerSecondStep,
          ingredient: beerIngredients
        ));
  }
}
