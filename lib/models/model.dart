// ignore_for_file: must_be_immutable, file_names,

class ProductModel {
  String? name;
  String? img;
  String? description;
  String? firstStep;
  String? secondStep;
  String? ingredient;
  int index = 0;
  bool isShow = false;

  ProductModel(
      {this.name,
      this.img,
      this.description,
      this.firstStep,
      this.secondStep,
      this.ingredient});

  ProductModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    img = json['img'];
    description = json['description'];
    firstStep = json['firstStep'];
    secondStep = json['secondStep'];
    ingredient = json['ingredient'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['img'] = img;
    data['description'] = description;
    data['firstStep'] = firstStep;
    data['secondStep'] = secondStep;
    data['ingredient'] = ingredient;
    return data;
  }
}
