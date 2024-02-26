import 'package:flutter/material.dart';

import '../models/model.dart';
import '../view/pages/detail_page/detail_page.dart';

Widget horizontalListWidget({context, name, img, description, firstStep, secondStep, ingredient}) {
  return Padding(
    padding: const EdgeInsets.all(3.0),
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
          height: 190,
          // Using ListView.builder
          child: ListView.builder(
            physics: const PageScrollPhysics(),
            shrinkWrap: true,
            scrollDirection: Axis.horizontal,
            itemCount: name.length,
            // list item builder
            itemBuilder: (BuildContext ctx, index) {
              return Container(
                key: ValueKey(img[index]),
                margin: const EdgeInsets.all(6),
                width: 140,
                alignment: Alignment.center,
                child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      AspectRatio(
                          aspectRatio: 2.3 / 2.85,
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
                                                  builder: (context) =>
                                                      DetailPage(ProductModel(
                                                          name: name[index],
                                                          img: img[index],
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
                                          fontSize: 18.0),
                                    ),
                                  )
                                ],
                              ))),
                      Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            gradient: LinearGradient(
                                begin: Alignment.bottomRight,
                                stops: const [
                                  0.1,
                                  0.9,
                                ],
                                colors: [
                                  Colors.black.withOpacity(.8),
                                  Colors.black.withOpacity(.1),
                                ])),
                      ),
                    ]),
              );
            },
          ),
        ),
      ],
    ),
  );
}
