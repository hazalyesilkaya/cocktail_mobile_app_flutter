import 'package:flutter/material.dart';
import '../animations/animation.dart';

Widget makeHomeItem({context, name}) {
  return ListTile(
      title: Center(
        child: FadeAnimation(
          0.3,
          Container(
            width: 330.0,
            padding: const EdgeInsets.fromLTRB(7.0, 8.0, 8.0, 7.0),
            decoration: BoxDecoration(
                color: Colors.blueGrey[300],
                borderRadius: BorderRadius.circular(15)),
            child: Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Row(
                  children: [
                Container(
                  width: 230,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    name,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: "PetitFormal"),
                  ),
                ),
                    const Icon(
                      Icons.search,
                      color: Colors.black26,
                    ),
              ]),
            ),
          ),
        ),
      ),
      onTap: () async {}
  );
}
