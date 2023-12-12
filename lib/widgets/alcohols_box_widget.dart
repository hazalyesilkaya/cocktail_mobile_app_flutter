import 'package:flutter/material.dart';

import '../models/model.dart';
import '../view/pages/detail_page/detail_page.dart';

Widget alcoholBox({name, img, description, firstStep, secondStep, ingredient}) {
  return Padding(
    padding: const EdgeInsets.all(11.0),
    child: Column(
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
          height: 380,
          child: GridView.builder(
              itemCount: img.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 15, mainAxisSpacing: 15),
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
                              image: AssetImage(img[index]),
                              fit: BoxFit.cover,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => DetailPage(
                                            ProductModel(
                                                name: name[index],
                                                img: img[index],
                                                description: description[index],
                                                firstStep: firstStep[index],
                                                secondStep: secondStep[index],
                                                ingredient: ingredient[index])),
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
  );
}
