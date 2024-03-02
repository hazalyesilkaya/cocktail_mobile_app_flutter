// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/animations/animation.dart';
import 'package:cocktail_app/view/pages/home/alcohols_box.dart';
import 'package:cocktail_app/view/pages/home/cocktails_horizontal_list.dart';
import 'package:cocktail_app/view/pages/home/headers.dart';
import 'package:cocktail_app/view/pages/home/hint_text.dart';
import 'package:cocktail_app/view/pages/home/knowledge_part.dart';
import 'package:flutter/material.dart';


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
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
               HintText(),
              // SizedBox(
              //   height: 10,
              // ),
              CocktailHorizontalList(),
              FadeAnimation(
               0.3,
                Padding(
                  padding: EdgeInsets.only(right: 5, left: 5, bottom: 2),
                  child: Column(
                    children: [
                    //  Headers("Kokteyller"),
                    //   CocktailHorizontalList(),
                      SizedBox(
                        height: 18,
                      ),
                      Headers("Mokteyl"),
                      AlcoholsBox(),
                      SizedBox(
                        height: 15,
                      ),
                      Headers("Bilgiler"),
                      Knowledge()
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
