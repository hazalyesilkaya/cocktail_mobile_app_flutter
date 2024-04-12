import '../models/model.dart';

class Diohelper {
  static List<ProductModel> getdata() {
    List<ProductModel> list = [];
    list.add(ProductModel(
        id: 300,
        name: "Margarita",
        img: "assets/images/osvaldo.jpg",
        description:
            "Your recipe has been uploaded, you can see it on your profile. Your recipe has been uploaded, you can see it on your",
        firstStep: "Margarita Step1",
        secondStep: "Margarita Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 301,
        name: "Alabama Slammer",
        img: "assets/images/isabella_mendes.jpg",
        description: "Description2",
        firstStep: "Alabama Slammer Step1",
        secondStep: "Alabama Slammer Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 302,
        name: "Alexander",
        img: "assets/images/martini_drink.jpg",
        description: "Description3",
        firstStep: "Alexander Step1",
        secondStep: "Alexander Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3"));
    list.add(ProductModel(
        id: 303,
        name: "Amaretto Sour",
        img: "assets/images/valeria.jpg",
        description: "Description4",
        firstStep: "Amaretto Step1",
        secondStep: "Amaretto Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 304,
        name: "Americano",
        img: "assets/images/valeria.jpg",
        description: "Description5",
        firstStep: "Americano Step1",
        secondStep: "Americano Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 305,
        name: "Americano",
        img: "assets/images/valeria.jpg",
        description: "Description5",
        firstStep: "Americano Step1",
        secondStep: "Americano Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 306,
        name: "Americano",
        img: "assets/images/valeria.jpg",
        description: "Description5",
        firstStep: "Americano Step1",
        secondStep: "Americano Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));
    list.add(ProductModel(
        id: 307,
        name: "Americano",
        img: "assets/images/valeria.jpg",
        description: "Description5",
        firstStep: "Americano Step1",
        secondStep: "Americano Step2",
        ingredient: "Ingredient1 Ingredient2 Ingredient3 Ingredient4"));

    return list;
  }
}
