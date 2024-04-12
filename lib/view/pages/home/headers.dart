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
      decoration: BoxDecoration(
       // borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade400,
              offset: const Offset(12, 5),
              blurRadius: 20,
            )
          ],
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 35, right: 35),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Container(
            width: MediaQuery.of(context).size.width*0.58,
            decoration: BoxDecoration(
              color: const Color.fromRGBO(250, 250, 250, 1.0),
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.grey.withOpacity(0.5), // Sol kenarın opak rengi
                  Colors.transparent, // Merkezin şeffaf rengi
                  Colors.grey.withOpacity(0.5), // Sağ kenarın opak rengi
                ],
              ),
            ),
            child: Center(
              child: Text(
                widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16,
                  // color: Colors.grey[200],
                  color: Colors.grey[800],
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
