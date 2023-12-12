// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../resources/home_page_data.dart';
import '../../../widgets/horizontal_list_widget.dart';

class CocktailHorizontalList extends StatelessWidget {
  const CocktailHorizontalList({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    List<String> horizontalListNames = horizontalList
        .map((item) {
          return item.name;
        })
        .cast<String>()
        .toList();
    List<String> horizontalListImages = horizontalList
        .map((item) {
          return item.img;
        })
        .cast<String>()
        .toList();
    List<String> horizontalListDescription = horizontalList
        .map((item) {
          return item.description;
        })
        .cast<String>()
        .toList();
    List<String> horizontalListFirstStep = horizontalList
        .map((item) {
          return item.firstStep;
        })
        .cast<String>()
        .toList();
    List<String> horizontalListSecondStep = horizontalList
        .map((item) {
          return item.secondStep;
        })
        .cast<String>()
        .toList();
    List<String> horizontalListIngredients = horizontalList
        .map((item) {
          return item.ingredient;
        })
        .cast<String>()
        .toList();
    return horizontalListWidget(
        context: context,
        name: horizontalListNames,
        img: horizontalListImages,
        description: horizontalListDescription,
        firstStep: horizontalListFirstStep,
        secondStep: horizontalListSecondStep,
        ingredient: horizontalListIngredients);
  }
}
