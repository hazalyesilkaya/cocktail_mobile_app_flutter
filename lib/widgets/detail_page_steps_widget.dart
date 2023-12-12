import 'package:flutter/material.dart';

Widget stepsWidget({context, index, step}) {

  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 17),
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CircleAvatar(
          backgroundColor: Colors.blueGrey[200],
          radius: 12,
          child: Text("${index + 1}"),
        ),
        Column(
          children: [
            SizedBox(
              width: 300,
              child: Text(
                "$step",
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        )
      ],
    ),
  );
}
