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
      alignment: Alignment.centerLeft,
      height: 36,
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.only(left: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 12),
        child: Text(
          widget.title,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 19,
            color: Colors.blueGrey[700],
            fontWeight: FontWeight.bold,
            fontFamily: "PetitFormal",
          ),
        ),
      ),
    );
  }
}
