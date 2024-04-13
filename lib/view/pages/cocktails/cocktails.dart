// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/resources/cocktails_data.dart';
import 'package:cocktail_app/animations/animation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../models/model.dart';
import '../../provider/app_provider.dart';
import '../detail_page/detail_page.dart';
import '../menu_page/favorites_page.dart';

class Cocktails extends StatefulWidget {
  const Cocktails({super.key});
  @override
  State<Cocktails> createState() => CocktailsState();
}

var getdata = Diohelper.getdata();

class CocktailsState extends State<Cocktails>
    with SingleTickerProviderStateMixin {
  List<ProductModel> filteredItems = [];
  DateTime? lastClickTime;
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

  @override
  Widget build(BuildContext context) {
    List lastList = context.watch<AppProvider>().inventoryList;
    context.watch<AppProvider>().getItem();
    List<dynamic> widget = [];
    int index = 0;
    for (var element in filteredItems) {
      element.index = index;
      widget.add(filteredItems.isNotEmpty
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
                  height: 85,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.deepOrange.shade900.withOpacity(.8), //8
                        Colors.deepOrange.shade900.withOpacity(.45), //3
                        Colors.deepOrange.shade900.withOpacity(.15), //1
                        Colors.white12.withOpacity(.07), //1
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    children: <Widget>[
                      Container(
                        width: 96,
                        height: 85,
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
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  element.name.toString(),
                                  style: TextStyle(
                                    color: Colors.blueGrey.shade900,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Text(
                                  "Detaylı Bilgi",
                                  style: TextStyle(
                                      color: Colors.blueGrey.shade700,
                                      fontSize: 12),
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
                icon: Icon(Icons.favorite,
                    size: 21,
                    color: lastList
                            .map((e) => e.id)
                            // .toSet()
                            // .intersection(filteredItems.map((e) => e.id).toSet())
                            .contains(element.id)
                        ? Colors.red
                        : Colors.grey[350]),
                onPressed: () {
                  // Şuanki zamanı al
                  DateTime now = DateTime.now();
                  // Eğer daha önce bir tıklama yapılmışsa ve aradaki süre 500 milisaniyeden küçükse, işlemi yapma
                  if (lastClickTime != null &&
                      now.difference(lastClickTime!) <
                          const Duration(milliseconds: 500)) {
                    return;
                  }
                  // Zamanı güncelle
                  lastClickTime = now;
                  setState(() {
                    if (!lastList.any((e) => e.id == element.id)) {
                      Provider.of<AppProvider>(context, listen: false)
                          .addFavoriteItems(element);
                    } else {
                      Provider.of<AppProvider>(context, listen: false)
                          .deleteItem(
                              lastList.indexWhere((e) => e.id == element.id));
                    }
                    // Provider.of<AppProvider>(context, listen: false).getItem();
                  });
                },
              ))
          : const Center(
              child: Text(
                'No results found',
                style: TextStyle(fontSize: 24),
              ),
            ));
      index++;
    }
    return Column(children: [
      const SizedBox(
        height: 17,
      ),
      Padding(
        padding: const EdgeInsets.only(left: 22, right: 15),
        child: Row(
          children: [
             SizedBox(
              width: MediaQuery.of(context).size.width * 0.68,
              child: const Text(
                'Find Your Cocktail',
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Playball"),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.2,
              child: IconButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Favorites()));
                  },
                  icon: const Icon(
                    Icons.bookmark,
                    size: 25,
                  )),
            )
          ],
        ),
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
    ]);
  }
}



