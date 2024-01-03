import 'package:flutter/material.dart';


class Notes extends StatefulWidget {
  // ProductModel model;
  const Notes( /*this.model, */ {super.key});

  @override
  NotesState createState() => NotesState();
}

class NotesState extends State<Notes> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Notes",style: TextStyle(fontSize: 25,color: Colors.deepOrange, fontWeight: FontWeight.bold),),),
    );
  }
}