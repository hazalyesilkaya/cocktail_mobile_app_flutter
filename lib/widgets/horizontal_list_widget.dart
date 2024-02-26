import 'package:flutter/material.dart';
import 'package:flutter_swiper_view/flutter_swiper_view.dart';

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
          height: 130,
          // Using ListView.builder
          child: Swiper(
            itemCount: name.length,
            viewportFraction: 0.63,
            scale: 0.5,
            //itemWidth: 100,
            //itemHeight: 190,
            itemBuilder: (BuildContext ctx, int index) {
              return Container(
                key: ValueKey(img[index]),
                margin: const EdgeInsets.all(6),
                alignment: Alignment.center,
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(28),
                      child: Material(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DetailPage(ProductModel(
                                  name: name[index],
                                  img: img[index],
                                  description: description[index],
                                  firstStep: firstStep[index],
                                  secondStep: secondStep[index],
                                  ingredient: ingredient[index],
                                )),
                              ),
                            );
                          },
                          child: Ink.image(
                            image: AssetImage(img[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    // Container(
                    //   alignment: Alignment.bottomCenter,
                    //   child: Text(
                    //     name[index],
                    //     style: const TextStyle(
                    //       color: Colors.white,
                    //       fontWeight: FontWeight.bold,
                    //       fontSize: 18.0,
                    //     ),
                    //   ),
                    // ),
                  ],
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
