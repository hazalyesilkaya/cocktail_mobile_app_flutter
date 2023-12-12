// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api

import 'package:cocktail_app/view/pages/menu_page/menu.dart';
import 'package:flutter/material.dart';
import 'package:cocktail_app/view/pages/home/home.dart';

import '../alcohols/alcohols.dart';
import '../cocktails/cocktails.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  NavigationPageState createState() => NavigationPageState();
}

class NavigationPageState extends State<NavigationPage> {
  int _selectedIndex = 0;
  final PageController _pageController = PageController();

  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    _pageController.jumpToPage(index);
  }

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(244, 243, 243, 1),
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
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
            elevation: 0,
            leading: const Icon(null),
          ),
        ),
        body: PageView(
          controller: _pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const <Widget>[
            FirstPage(),
            Cocktails(),
            Alcohols(),
            Menu(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Keşfet',
              backgroundColor: Colors.white24,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_bar),
              label: 'Kokteyller',
              backgroundColor: Colors.white24,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.liquor_outlined),
              label: 'Alkoller',
              backgroundColor: Colors.white24,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu),
              label: 'Menü',
              backgroundColor: Colors.white24,
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.amber[800],
          onTap: _onItemTapped,
        ),
      ),
    );
  }
}
