// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';

class HintText extends StatelessWidget {
  const HintText({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(
        height: 17,
      ),
      Text(
        'Find Your Cocktail',
        style: TextStyle(
            color: Colors.deepOrange,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: "Playball"),
      ),
      // SizedBox(
      //   height: 10,
      // ),
      // Container(
      //   padding: const EdgeInsets.all(3),
      //   decoration: BoxDecoration(
      //       color: const Color.fromRGBO(244, 243, 243, 1),
      //       borderRadius: BorderRadius.circular(10)),
      //   child: const TextField(
      //     decoration: InputDecoration(
      //         border: InputBorder.none,
      //         prefixIcon: Icon(
      //           Icons.search,
      //           color: Colors.black87,
      //         ),
      //         hintText: "Search you're looking for",
      //         hintStyle: TextStyle(
      //           color: Colors.grey,
      //           fontSize: 15,
      //         )),
      //   ),
      // ),
    ]);
  }
}
