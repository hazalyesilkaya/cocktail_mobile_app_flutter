// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/resources/cocktails_data.dart';
import 'package:cocktail_app/animations/animation.dart';
import 'package:flutter/material.dart';

import '../../../models/model.dart';
import '../detail_page/detail_page.dart';

class Cocktails extends StatefulWidget {
  const Cocktails({super.key});
  @override
  State<Cocktails> createState() => CocktailsState();
}

var getdata = Diohelper.getdata();

class CocktailsState extends State<Cocktails>
    with SingleTickerProviderStateMixin {
  List<ProductModel> filteredItems = [];
  @override
  initState() {
    // at the beginning, all users are shown
    filteredItems = getdata.cast<ProductModel>();
    super.initState();
  }

  void runFilter(String enteredKeyWord) {
    List<ProductModel> results = [];
    if (enteredKeyWord.isEmpty) {
      results = getdata.cast<ProductModel>();
    } else {
      results = getdata
          .where((element) => element.name!
              .toLowerCase()
              .contains(enteredKeyWord.toLowerCase()))
          .cast<ProductModel>()
          .toList();
    }
    setState(() {
      filteredItems = results.cast<ProductModel>();
    });
  }

  void favoriteButton(element) {
    // List<ProductModel> filteredItems = [];
    setState(
          () => element.isShow = !element.isShow,
    );
}
  @override
  Widget build(BuildContext context) {
    List<dynamic> widget = [];
    int index = 0;
    for (var element in filteredItems) {
      element.index = index;
      widget.add(
        filteredItems.isNotEmpty
            ? ListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => DetailPage(element)));
                },
                title: FadeAnimation(
                  0.3,
                  Container(
                    height: 90,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.deepOrange.shade900.withOpacity(.8),
                          Colors.deepOrange.shade900.withOpacity(.3),
                          Colors.deepOrange.shade900.withOpacity(.1),
                          Colors.white12.withOpacity(.1),
                        ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 105,
                          height: 90,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              image: DecorationImage(
                                  image: AssetImage(
                                    element.img.toString(),
                                  ),
                                  fit: BoxFit.cover)),
                          child: Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                gradient: LinearGradient(colors: [
                                  Colors.black.withOpacity(.4),
                                  Colors.black.withOpacity(.1),
                                ])),
                          ),
                        ),
                        const SizedBox(
                          width: 16,
                        ),
                        Expanded(
                          child: Container(
                            height: 80,
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    element.name.toString(),
                                    style: TextStyle(
                                      color: Colors.blueGrey.shade900,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  Text(
                                    "Detaylı Bilgi",
                                    style: TextStyle(
                                        color: Colors.blueGrey.shade700,
                                        fontSize: 13),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                trailing: IconButton(
                  onPressed: () => favoriteButton(element),
                  icon: element.isShow
                      ? const Icon(Icons.favorite)
                      : const Icon(Icons.favorite_border),
                  color: element.isShow ? Colors.red[400] : Colors.deepOrange,
                ),
              ) /* Icon(Icons.favorite_border, size: 23, color: Colors.deepOrange.shade900,),
              ) */
            : const Center(
                child: Text(
                  'No results found',
                  style: TextStyle(fontSize: 24),
                ),
              ),
      );
      index++;
    }
    return Scaffold(
      body: Column(children: [
        const SizedBox(
          height: 17,
        ),
        const Text(
          'Find Your Cocktail',
          style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 30,
              fontWeight: FontWeight.bold,
              fontFamily: "Playball"),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          padding: const EdgeInsets.only(top: 3),
          decoration: BoxDecoration(
              color: const Color.fromRGBO(244, 243, 243, 1),
              borderRadius: BorderRadius.circular(10)),
          child: TextField(
            onChanged: (value) => runFilter(value),
            decoration: const InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.black87,
                ),
                hintText: "Search you're looking for",
                hintStyle: TextStyle(
                  color: Colors.grey,
                  fontSize: 15,
                )),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: GestureDetector(
            child: Center(
              child: ListView(
                  children: /* ListTile.divideTiles(
                  context: context,
                  tiles: [...widget],
                ).toList(), */
                      [...widget]),
            ),
          ),
        ),
      ]),
    );
  }
}
