// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/view/pages/alcohols/tabBar/beer.dart';
import 'package:cocktail_app/view/pages/alcohols/tabBar/tequila.dart';
import 'package:cocktail_app/view/pages/alcohols/tabBar/wine.dart';
import 'package:cocktail_app/view/pages/alcohols/tabBar/liqueur.dart';
import 'package:tabbar_gradient_indicator/tabbar_gradient_indicator.dart';
import 'package:cocktail_app/view/pages/alcohols/tabBar/whiskey.dart';
import 'package:cocktail_app/view/pages/alcohols/drinks_icons.dart';
import 'package:flutter/material.dart';

class Alcohols extends StatefulWidget {
  const Alcohols({super.key});

  @override
  State<Alcohols> createState() => AlcoholsState();
}

class AlcoholsState extends State<Alcohols>
    with SingleTickerProviderStateMixin {
  final List<Tab> alcoholNames = <Tab>[
    const Tab(
      text: 'Viski',
      icon: Icon(
        Drinks.whiskey,
        color: Colors.black,
        size: 40,
      ),
    ),
    const Tab(
        text: 'Bira',
        icon: Icon(
          Drinks.beer,
          color: Colors.black,
          size: 40,
        )),
    const Tab(
      text: 'Şarap',
      icon: Icon(
        Drinks.wine,
        color: Colors.black,
        size: 40,
      ),
    ),
    const Tab(
      text: 'Tekila',
      icon: Icon(
        Drinks.tequila,
        color: Colors.black,
        size: 40,
      ),
    ),
    const Tab(
        text: 'Likör',
        icon: Icon(
          Drinks.liqueur,
          color: Colors.black,
          size: 40,
        )),
  ];

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: alcoholNames.length);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
          appBar: AppBar(
            bottom: TabBar(
              labelColor: Colors.deepOrange,
              controller: _tabController,
              tabs: alcoholNames,
              tabAlignment: TabAlignment.center,
              labelStyle: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontFamily: "PetitFormal"),
              indicator: const TabBarGradientIndicator(gradientColor: [
                Colors.orange,
                Colors.deepOrange,
              ], indicatorWidth: 2),
            ), //
            // TabBar
            title: Container(
              alignment: Alignment.center,
              child: const Text(
                "Alkoller",
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 30,
                    fontFamily: "Playball"),
              ),
            ),
            backgroundColor: Colors.white60,
            automaticallyImplyLeading: false,
          ), //
          // AppBar
          body: TabBarView(
            controller: _tabController,
            children: const [
              Whiskey(),
              Beer(),
              Wine(),
              Tequila(),
              Liqueur(),
            ],
          ), // TabBarView
        ),
      ), // Scaffold
    ); // De
  }
}
