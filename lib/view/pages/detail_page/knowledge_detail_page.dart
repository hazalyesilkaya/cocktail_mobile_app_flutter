// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/models/knowledge_model.dart';
import 'package:flutter/material.dart';

import '../../components/button_arrow.dart';

class KnowledgeDetailPage extends StatefulWidget {
  KnowledgeModel model;
  KnowledgeDetailPage({required this.model, super.key});
  @override
  KnowledgeDetailState createState() => KnowledgeDetailState();
}

class KnowledgeDetailState extends State<KnowledgeDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: const EdgeInsets.only(left: 20),
                  width: 59,
                  height: 59,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.black26,
                  ),
                  child: buttonArrow(context),
                ),
              ],
            ),
            Container(
              decoration:  const BoxDecoration(color: Colors.white70),
              width: double.infinity,
              child: SizedBox(
                width: 350,
                child: Center(
                  child: Text(
                    widget.model.title,
                    style: const TextStyle(
                      color: Colors.deepOrange,
                      fontSize: 33,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Playball",
                    ),
                  ),
                ),
              ),
            ),
            Container(
              height: 2,
              width: 300,
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: [
                    Colors.grey.withOpacity(.5),
                    Colors.blueGrey.withOpacity(.7),
                    Colors.grey.withOpacity(.5),
                  ])
              ),
            ),
            Container(
              height: 2,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.shade400,
                  offset: const Offset(6, 3),
                  blurRadius: 15,
                )
              ]),
            ),
            const SizedBox(
              height: 8,
            ),
            // Açıklama içeriği
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white12,
                    border: Border.all(
                      color: Colors.deepOrange.withOpacity(0.7),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.all(28),
                    child: Text(
                      widget.model.description,
                      textAlign: TextAlign.justify,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.blueGrey[900],
                        fontFamily: "TimesNewRoman",
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
}