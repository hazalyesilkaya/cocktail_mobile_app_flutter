// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

class Headers extends StatefulWidget {
  const Headers(this.title, {super.key});
  final String title;
  @override
  State<Headers> createState() => HeadersState();
}

class HeadersState extends State<Headers> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 33,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
       // borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(12, 5),
              blurRadius: 20,
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            width: 155,
            color: Colors.blueGrey[800],
            child: Center(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[200],
                  fontWeight: FontWeight.bold,
                  fontFamily: "PetitFormal",
                ),
              ),
            ),
          ),
        ),
      ),
      // Padding(
      //   padding: const EdgeInsets.only(left: 35, right: 35),
      //   child: Text(
      //     widget.title,
      //     textAlign: TextAlign.center,
      //     style: TextStyle(
      //       fontSize: 18,
      //       color: Colors.blueGrey[900],
      //       fontWeight: FontWeight.bold,
      //       fontFamily: "PetitFormal",
      //     ),
      //   ),
      // ),
    );
  }
}
