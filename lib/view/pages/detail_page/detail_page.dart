// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:flutter/material.dart';
import '../../../models/model.dart';
import '../../components/button_arrow.dart';
import '../../components/detail_page_image.dart';
import '../../components/scroll.dart';

class DetailPage extends StatefulWidget {
  ProductModel model;
  DetailPage(this.model, {super.key});

  @override
  DetailPageState createState() => DetailPageState();
}

class DetailPageState extends State<DetailPage> {
  DateTime? lastClickTime;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            detailPageImage(widget.model.img),
            buttonArrow(context, widget.model),
            scroll(
                widget.model.name,
                widget.model.description,
                widget.model.firstStep,
                widget.model.secondStep,
                widget.model.ingredient,
            ),
          ],
        ),
      ),
    );
  }
}
