
/*import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:provider/provider.dart';

import '../../../animations/animation.dart';
import 'deneme2.dart';
import 'models/model.dart';
class Favorites extends StatefulWidget {
  const Favorites( {super.key});

  @override
  FavoritesState createState() => FavoritesState();

  void add(ListTile listTile) {
    var box5 = Hive.box<ProductModel>('myBox');
    box5.add(listTile as ProductModel);
  }

}

class FavoritesState extends State<Favorites> {
  get old2 => context.watch<AppProvider>().old;
  List newValue = [];
  @override
  initState() {
    // at the beginning, all users are shown
    newValue = [];
    super.initState();
  }
  void runFilter(String enteredKeyWord) async{
    List results = [];
    if (enteredKeyWord.isEmpty) {
      results = [];
    } else if(enteredKeyWord.isNotEmpty) {
      results = await readNewValue();
    }
    setState(() {
      newValue = results ;
    });
  }

  Future<Iterable<Map<String, dynamic>>> readFromHive() async {
    final box5 = Hive.box('myBox');
    final widget = box5.values.cast<Map<String, dynamic>>();
    return widget;
  }

  void saveNewValue2() {
    var save = Hive.box('myBox');
    save.put('key1', old2);
  }
  readNewValue() {
    var box = Hive.box('myBox');
    var newData1 = box.get('key1');
    return newData1;
  }
  @override
  Widget build(BuildContext context) {
    //var box5 = Hive.box<ProductModel>('myBox');
    // var myList = context.watch<AppProvider>().old;
    // Box<dynamic> widget = [];
    int index = 0;
    for (var element in newValue) {
      element.index = index;
      widget.add(
        ListTile(
          title: FadeAnimation(
            0.3,
            Container(
              height: 85,
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
                      height: 72,
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
            icon: Icon(Icons.delete,
                size: 23,
                color: Colors.grey[350]),
            onPressed: () {
              context.read<AppProvider>().remove(element);
            },
          ),
        ),
      );
      index++;
    }
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white54,
        flexibleSpace: FlexibleSpaceBar(
          background: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.orange.withOpacity(.5),
                  Colors.deepOrange.withOpacity(.7),
                  Colors.white
                ])),
          ),
        ),
      ),
      body:  Column(
        children: [
          const SizedBox(
            width: 306,
            child: Text(
              'Favoriler',
              style: TextStyle(
                  color: Colors.deepOrange,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  fontFamily: "Playball"),
            ),
          ),
          Expanded(
            child: GestureDetector(
              child: Center(
                  child: widget
              ),
            ),
          ),
        ],
      ),
    );
  }
} */