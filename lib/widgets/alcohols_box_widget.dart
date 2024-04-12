import 'package:flutter/material.dart';

import '../models/model.dart';
import '../view/pages/detail_page/detail_page.dart';

Widget alcoholBox({name, img, description, firstStep, secondStep, ingredient, id, mocktailList}) {
  return Padding(
    padding: const EdgeInsets.only(right: 21, left: 21, top: 11),
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
          //height: 300,
          child: GridView.builder(
            shrinkWrap: true,
              itemCount: img.length,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, crossAxisSpacing: 22, mainAxisSpacing: 15, childAspectRatio: 1.4),
              itemBuilder: (context, index) {
                return AspectRatio(
                    aspectRatio: 1 / 0.7,
                    child: Center(
                        child: Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(12),
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
                                                ingredient: ingredient[index],
                                                id: mocktailList[index].id),
                                              ),
                                      ));
                                },
                              ),
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.bottomCenter,
                          // decoration: BoxDecoration(
                          //   borderRadius: BorderRadius.circular(12),
                          //   gradient: LinearGradient(
                          //     begin: Alignment.topCenter,
                          //     end: Alignment.bottomCenter,
                          //     colors: [Colors.transparent, Colors.black.withOpacity(0.3)],
                          //   ),
                          // ),
                          child: Text(
                            name[index],
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.grey[200],
                                fontWeight: FontWeight.w900,
                                fontSize: 16.4,),
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
