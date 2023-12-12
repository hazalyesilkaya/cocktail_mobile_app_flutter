import 'package:flutter/material.dart';

ingredients(BuildContext context, index, items) {
  return Padding(
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Row(
      children: [
        const CircleAvatar(
          radius: 10,
          backgroundColor: Colors.deepOrange,
          child: Icon(
            Icons.done,
            size: 15,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Text(
          items[index],
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ],
    ),
  );
}
