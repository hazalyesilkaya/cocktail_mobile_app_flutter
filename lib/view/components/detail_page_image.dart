import 'package:flutter/material.dart';

detailPageImage(img) {
  return Container(
    width: double.infinity,
    height: 312,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage("$img"), fit: BoxFit.cover)),
    child: Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(colors: [
            Colors.black.withOpacity(.4),
            Colors.black.withOpacity(.1),
          ])),
    ),
  );
}
