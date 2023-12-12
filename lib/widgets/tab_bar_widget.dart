// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/animations/animation.dart';
import 'package:flutter/material.dart';
import '../models/model.dart';
import '../view/pages/detail_page/detail_page.dart';

Widget tabBarItem({image, name, description, firstStep, secondStep, ingredient}) {
  return Padding(
    padding: const EdgeInsets.only(top: 18,right: 20,left: 20),
    child: FadeAnimation(
      0.3,
      Column(
        children: [
          Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: Colors.grey.shade400,
                offset: const Offset(20, 10),
                blurRadius: 35,
              )
            ]),
            width: double.infinity,
            height: 410,
            child: GridView.builder(
                itemCount: image.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 13,
                    mainAxisSpacing: 14),
                itemBuilder: (context, index) {
                  return AspectRatio(
                      aspectRatio: 1 / 0.7,
                      child: Center(
                          child: Stack(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(20),
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
        ],
      ),
    ),
  );
}
