/*
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../animations/animation.dart';
import '../cocktails/cocktails.dart';


class Favorites extends StatefulWidget {
  const Favorites( {super.key});

  @override
  FavoritesState createState() => FavoritesState();
}

class FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    var myList = context.watch<AppProvider>().myListItem;
    List<dynamic> widget = [];
    int index = 0;
    for (var element in myList) {
      element.index = index;
      widget.add(
            Consumer<AppProvider>(
              builder: (context, data, _){
              return ListTile(
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
                context.read<AppProvider>().removeFromList(element);
              },
                        ),
                      );}
            )
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
                child: ListView(
                    children: [...widget]),
              ),
            ),
          ),
        ],
      ),
    );
  }
  } */