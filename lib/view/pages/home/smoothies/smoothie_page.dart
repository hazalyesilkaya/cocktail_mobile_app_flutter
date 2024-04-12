import 'package:cocktail_app/models/model.dart';
import 'package:flutter/material.dart';
import '../../../../widgets/alcohols_box_widget.dart';

class SmoothieBox extends StatelessWidget {
  const SmoothieBox({ required this.smoothieList, super.key,});
  final List<ProductModel> smoothieList;
  @override
  Widget build(BuildContext context) {
    List<String> smoothieNames = smoothieList
        .map((item) {
      return item.name;
    })
        .cast<String>()
        .toList();
    List<String> smoothieImages = smoothieList
        .map((item) {
      return item.img;
    })
        .cast<String>()
        .toList();
    List<String> smoothieDescription = smoothieList
        .map((item) {
      return item.description;
    })
        .cast<String>()
        .toList();
    List<String> smoothieFirstStep = smoothieList
        .map((item) {
      return item.firstStep;
    })
        .cast<String>()
        .toList();
    List<String> smoothieSecondStep = smoothieList
        .map((item) {
      return item.secondStep;
    })
        .cast<String>()
        .toList();
    List<String> smoothieIngredients = smoothieList
        .map((item) {
      return item.ingredient;
    })
        .cast<String>()
        .toList();
    List<int?> smoothieId = smoothieList.map((item) {
      return item.id;
    }).toList();
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[50], // Arka plan rengini ayarla
          elevation: 0, // Gölgeyi kaldır
          leading: SizedBox( // Sağa kaydırmak için bir SizedBox ekleyin
            width: 50, // İstenilen genişlikte
            child: Row(
              children: [
                IconButton(
                padding: EdgeInsets.zero, // Ikonun etrafındaki boşluğu kaldırın
                icon: const Icon(Icons.arrow_back), // Geri dönme ikonu
                onPressed: () {
                  Navigator.of(context).pop(); // Geri dönme işlevi
                },
              ),
                // Text(smoothieNames[index])
              ]
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.all(5.0),
          child: SingleChildScrollView(
            padding: EdgeInsets.only(bottom: 10),
            child: alcoholBox(
            name: smoothieNames,
            img: smoothieImages,
            description: smoothieDescription,
            firstStep: smoothieFirstStep,
            secondStep: smoothieSecondStep,
            ingredient: smoothieIngredients,
            id: smoothieId,
            mocktailList: smoothieList),
          ),
        )
    );
  }
}
