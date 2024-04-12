import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/app_provider.dart';

buttonArrow(BuildContext context, model) {
  List lastList = context.watch<AppProvider>().inventoryList;
  bool isFavorite;
  isFavorite = lastList.map((e) => e.id).contains(model.id);
  context.watch<AppProvider>().getItem();
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            clipBehavior: Clip.hardEdge,
            height: 55,
            width: 55,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Container(
                height: 55,
                width: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                ),
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 20,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 30),
        child: Container(
          alignment: Alignment.center,
          width: 43, // Konteynerin genişliğini belirleyerek daireyi küçültüyoruz
          height: 43,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white.withOpacity(0.3), // Opaklık eklenmiş beyaz bir arka plan
          ),
          child: IconButton(
            alignment: Alignment.center,
            icon: Icon(
              Icons.favorite,
              size: 22,
              color: !isFavorite ? Colors.white70 : Colors.red,
            ),
            onPressed: () async {
              if (!lastList.any((e) => e.id == model.id)) {
                Provider.of<AppProvider>(context, listen: false)
                    .addFavoriteItems(model);
              } else {
                Provider.of<AppProvider>(context, listen: false)
                    .deleteItem(lastList
                    .indexWhere((e) => e.id == model.id));
              }
            },
          ),
        ),
      ),
    ],
  );
}
