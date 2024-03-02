import 'package:cocktail_app/animations/animation.dart';
import 'package:cocktail_app/view/components/steps.dart';
import 'package:flutter/material.dart';
import 'package:cocktail_app/view/components/ingredients.dart';


scroll(name, description, firstStep, secondStep, drinkIngredients) {
  String ingredientItems = drinkIngredients;
  final items = ingredientItems.split(',');

  return DraggableScrollableSheet(
      initialChildSize: 0.67,
      maxChildSize: 1.0,
      minChildSize: 0.65,
      builder: (context, scrollController) {
        return Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          clipBehavior: Clip.hardEdge,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
          ),
          child: SingleChildScrollView(
            controller: scrollController,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 10, bottom: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5,
                        width: 35,
                        color: Colors.black12,
                      ),
                    ],
                  ),
                ),
                FadeAnimation(
                  0.3,
                  Text(
                    "$name",
                    style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey[900],
                        fontFamily: "PetitFormal"),
                    /*   style: Theme
                        .of(context)
                        .textTheme
                        .displaySmall, */
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "İnfo",
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.grey),
                ),
                const SizedBox(
                  height: 5,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    height: 4,
                  ),
                ),
                Text(
                  'Açıklama',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[600],
                      fontFamily: "PetitFormal"),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  description,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(color: Colors.black87),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    height: 4,
                  ),
                ),
                Text(
                  "Malzemeler",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[600],
                      fontFamily: "PetitFormal"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: items.length,
                  itemBuilder: (context, index) => ingredients(context, index, items),
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Divider(
                    height: 4,
                  ),
                ),
                Text(
                  "Tarif",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey[600],
                      fontFamily: "PetitFormal"),
                ),
                const SizedBox(
                  height: 10,
                ),
                ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 1,
                  itemBuilder: (context, index) =>
                      steps(context, index, firstStep, secondStep),
                ),
              ],
            ),
          ),
        );
      });
}
