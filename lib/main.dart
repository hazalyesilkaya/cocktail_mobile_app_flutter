import 'dart:io';
import 'package:cocktail_app/view/pages/cocktails/cocktails.dart';
import 'package:cocktail_app/view/pages/start/starter_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:path_provider/path_provider.dart';
import 'models/model.dart';



void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  Directory directory = await getApplicationDocumentsDirectory();
  Hive.init(directory.path);
  Hive.registerAdapter(ProductModelAdapter());
  Hive.registerAdapter(ColorAdapter());
  await Hive.openBox<ProductModel>('inventory');
  //await Hive.openBox<Color>('colorBox');
  //await AppProvider().getItem();
  //await Hive.deleteBoxFromDisk('inventory');
  //await Hive.initFlutter();
  runApp(ChangeNotifierProvider(
    create: (context) => AppProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Roboto'),
      home: const StarterPage(),
    ),
  ));
}
/* void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  theme: ThemeData(fontFamily: 'Roboto'),
  home: const StarterPage(),
));
*/