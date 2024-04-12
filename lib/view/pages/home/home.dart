// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/animations/animation.dart';
import 'package:cocktail_app/resources/coffee_cocktails_data.dart';
import 'package:cocktail_app/resources/smoothies_data.dart';
import 'package:cocktail_app/view/pages/home/alcohols_box.dart';
import 'package:cocktail_app/view/pages/home/cocktails_horizontal_list.dart';
import 'package:cocktail_app/view/pages/home/headers.dart';
import 'package:cocktail_app/view/pages/home/hint_text.dart';
import 'package:cocktail_app/view/pages/home/knowledge_part.dart';
import 'package:cocktail_app/view/pages/home/smoothies/smoothies.dart';
import 'package:flutter/material.dart';

import '../../../resources/home_page_data.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({
    super.key,
  });

  @override
  State<FirstPage> createState() => FirstPageState();
}

class FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              const HintText(),
              const CocktailHorizontalList(),
              FadeAnimation(
                0.3,
                Padding(
                  padding: const EdgeInsets.only(right: 5, left: 5, bottom: 2),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 12,
                      ),
                      const Headers("Mokteyl Tarifleri"),
                      Smoothies("Mokteyller", "assets/images/pages_img/mokteyl.jpg", homePageAlcoholBoxList),
                      // const AlcoholsBox(),
                      const SizedBox(
                        height: 15,
                      ),
                      const Headers("Smoothie Tarifleri"),
                      Smoothies("Green Smoothie", "assets/images/pages_img/green_smoothies.jpg", greenSmoothies),
                      Smoothies("Protein Smoothie", "assets/images/pages_img/protein_smoothies.jpg", proteinSmoothies),
                      Smoothies("Yoğurt Smoothie", "assets/images/pages_img/yogurt_smoothies.jpg", yogurtSmoothies),
                      const SizedBox(
                        height: 15,
                      ),
                      const Headers("Kahve Kokteylleri"),
                      Smoothies("Kahve Bazlı İçecekler", "assets/images/pages_img/coffee_cocktails.jpg", coffeeCocktails),
                      const SizedBox(
                        height: 15,
                      ),
                      const Headers("Bilgiler"),
                      const Knowledge()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
