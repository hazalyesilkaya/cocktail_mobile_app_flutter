// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../resources/home_page_data.dart';
import '../../../widgets/alcohols_box_widget.dart';

class AlcoholsBox extends StatelessWidget {
  const AlcoholsBox({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> alcoholsNames = homePageAlcoholBoxList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> alcoholsImages = homePageAlcoholBoxList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> alcoholsDescription = homePageAlcoholBoxList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> alcoholsFirstStep = homePageAlcoholBoxList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> alcoholsSecondStep = homePageAlcoholBoxList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> alcoholsIngredients = homePageAlcoholBoxList
        .map((item) {
      return item.ingredient;
    })
        .cast<String>()
        .toList();
    return alcoholBox(
        name: alcoholsNames,
        img: alcoholsImages,
        description: alcoholsDescription,
        firstStep: alcoholsFirstStep,
        secondStep: alcoholsSecondStep,
    ingredient: alcoholsIngredients);
  }
}
