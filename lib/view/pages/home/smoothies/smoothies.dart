import 'package:cocktail_app/view/pages/home/smoothies/smoothie_page.dart';
import 'package:flutter/material.dart';

import '../../../../models/model.dart';



class Smoothies extends StatefulWidget {
  const Smoothies(this.title,this.img,this.smoothieList, {super.key});
  final String title;
  final String img;
  final List<ProductModel> smoothieList;
  @override
  State<Smoothies> createState() => SmoothiesState();
}

class SmoothiesState extends State<Smoothies> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SmoothieBox(smoothieList: widget.smoothieList)), // NewPage, yönlendirilecek sayfanın class adıdır
        );
      },
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        alignment: Alignment.center,
        height: 150,
        width: MediaQuery.of(context).size.width * 0.87,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Stack(
            children: <Widget>[
              Image.asset(
                widget.img,
                width: double.infinity,
                height: double.infinity,
                fit: BoxFit.cover,
              ),
              Container(
                color: Colors.black.withOpacity(0.5),
              ),
              Center(
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontFamily: "PetitFormal",
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
