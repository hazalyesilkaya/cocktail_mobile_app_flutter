import 'package:flutter/material.dart';

import '../../../models/model.dart';

class Favorites extends StatefulWidget {
 // ProductModel model;
  const Favorites( /*this.model, */ {super.key});

  @override
  FavoritesState createState() => FavoritesState();
}

class FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Favorites",style: TextStyle(fontSize: 25,color: Colors.deepOrange, fontWeight: FontWeight.bold),),),
    );
  }
  }