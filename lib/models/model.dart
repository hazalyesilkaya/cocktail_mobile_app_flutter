// ignore_for_file: must_be_immutable, file_names,
import 'dart:ui';

import 'package:hive/hive.dart';
part 'model.g.dart';

@HiveType(typeId: 0)
class ProductModel {
  @HiveField(0)
  String? name;
  @HiveField(1)
  String? img;
  @HiveField(2)
  String? description;
  @HiveField(3)
  String? firstStep;
  @HiveField(4)
  String? secondStep;
  @HiveField(5)
  String? ingredient;
  @HiveField(6)
  int? id;
  @HiveField(7)
  int index = 0;
  @HiveField(8)
  bool isShow = false;
  @HiveField(9)
  Color? color;

  ProductModel({
    this.name,
    this.img,
    this.description,
    this.firstStep,
    this.secondStep,
    this.ingredient,
    this.id,
    this.color,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    description = json['description'];
    firstStep = json['firstStep'];
    secondStep = json['secondStep'];
    ingredient = json['ingredient'];
    id = json['id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['img'] = img;
    data['description'] = description;
    data['firstStep'] = firstStep;
    data['secondStep'] = secondStep;
    data['ingredient'] = ingredient;
    data['id'] = id;
    return data;
  }
}
