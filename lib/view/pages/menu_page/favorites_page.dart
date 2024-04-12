import 'package:cocktail_app/view/pages/detail_page/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../animations/animation.dart';
import '../../provider/app_provider.dart';

class Favorites extends StatefulWidget {
  const Favorites({super.key});

  @override
  FavoritesState createState() => FavoritesState();
}
class FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    context.watch<AppProvider>().getItem();
    var myList = context.watch<AppProvider>().inventoryList;
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(29.5),
          child: AppBar()),
      body: FadeAnimation(
       0.1, Column(
          children: [
            Container(
              decoration:  const BoxDecoration(color: Colors.white70),
             width: double.infinity,
              child: const SizedBox(
                width: 350,
                child: Center(
                  child: Text(
                    'Favoriler',
                    style: TextStyle(
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
            Expanded(
              child: GestureDetector(
                child: Center(
                  child: myList.isEmpty
                      ? const Text(
                          'Favori yok.',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Drinks",
                          ),
                        )
                      : ListView.builder(
                          itemCount: myList.length,
                          itemBuilder: (context, index) {
                            var element = myList[index];
                            return ListTile(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            DetailPage(element)));
                              },
                              title:
                                Container(
                                  height: 85,
                                  decoration: BoxDecoration(
                                      gradient: LinearGradient(colors: [
                                        Colors.deepOrange.shade900
                                            .withOpacity(.8),
                                        Colors.deepOrange.shade900
                                            .withOpacity(.45),
                                        Colors.deepOrange.shade900
                                            .withOpacity(.15),
                                        Colors.white12.withOpacity(.07),
                                      ]),
                                      borderRadius: BorderRadius.circular(10)),
                                  child: Row(
                                    children: <Widget>[
                                      Container(
                                        width: 96,
                                        height: 85,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            image: DecorationImage(
                                                image: AssetImage(
                                                  element.img.toString(),
                                                ),
                                                fit: BoxFit.cover)),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              gradient: LinearGradient(colors: [
                                                Colors.black.withOpacity(.4),
                                                Colors.black.withOpacity(.1),
                                              ])),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 10,
                                      ),
                                      Expanded(
                                        child: Container(
                                          height: 85,
                                          alignment: Alignment.centerLeft,
                                          child: Padding(
                                            padding: const EdgeInsets.all(2.0),
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.spaceAround,
                                              children: <Widget>[
                                                Text(
                                                  element.name.toString(),
                                                  style: TextStyle(
                                                    color:
                                                        Colors.blueGrey.shade900,
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                Text(
                                                  "Detaylı Bilgi",
                                                  style: TextStyle(
                                                      color: Colors
                                                          .blueGrey.shade700,
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
                              trailing: IconButton(
                                icon: Icon(
                                  Icons.delete,
                                  size: 23,
                                  color: Colors.grey[350],
                                ),
                                onPressed: () {
                                  context.read<AppProvider>().deleteItem(index);
                                },
                              ),
                            );
                          },
                        ),
                ),
              ),
            ),
            Container(
              height: 17,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                  color: Colors.blueGrey.shade300,
                  offset: const Offset(20, 10),
                  blurRadius: 35,
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
