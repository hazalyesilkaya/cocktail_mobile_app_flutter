// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/animations/animation.dart';
import 'package:flutter/material.dart';
import '../models/model.dart';
import '../view/pages/detail_page/detail_page.dart';

Widget tabBarItem({image, name, description, firstStep, secondStep, ingredient, context}) {
  double screenHeight = MediaQuery.of(context).size.height;
  // double gridViewHeight = screenHeight * 0.67;
  double mainAxisHeight = screenHeight * 0.021;
  return Padding(
    padding: const EdgeInsets.only(top:15, right: 26, left: 26, bottom: 10),
    child: FadeAnimation(
      0.3,
      Column(
        children: [
          Container(
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.black54,
                offset: Offset(0, 10),
                blurRadius: 18,
              )
            ]),
            width: double.infinity,
           // height: gridViewHeight,// 550,
            child: Padding(
              padding: const EdgeInsets.only(right: 8, left: 8),
              child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: image.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 26,
                      mainAxisSpacing:  mainAxisHeight, //15,
                    childAspectRatio: 1.6,),
                  itemBuilder: (context, index) {
                    return AspectRatio(
                        aspectRatio: 1.05,
                        child: Center(
                            child: Stack(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Material(
                                child: Ink.image(
                                  image: AssetImage(image[index]),
                                  fit: BoxFit.cover,
                                  child: InkWell(
                                    onTap: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                DetailPage(ProductModel(
                                              name: name[index],
                                              img: image[index],
                                              description: description[index],
                                              firstStep: firstStep[index],
                                              secondStep: secondStep[index],
                                                  ingredient: ingredient[index]
                                            )),
                                          ));
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                name[index],
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20.0),
                              ),
                            )
                          ],
                        )));
                  }),
            ),
          ),
        ],
      ),
    ),
  );
}
