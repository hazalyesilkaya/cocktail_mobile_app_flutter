// ignore_for_file: must_be_immutable, file_names,  library_private_types_in_public_api
/*
import 'package:cocktail_app/resources/cocktails_data.dart';
import 'package:cocktail_app/animations/animation.dart';
import 'package:cocktail_app/view/pages/detail_page/detail_page.dart';
import 'package:cocktail_app/view/pages/menu_page/favorites_page.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import '../../../models/model.dart';

class Cocktails extends StatefulWidget {
  const Cocktails({super.key});
  @override
  State<Cocktails> createState() => CocktailsState();
}

var getdata = Diohelper.getdata();
class CocktailsState extends State<Cocktails>
    with SingleTickerProviderStateMixin {
  List<ProductModel> filteredItems = [];
  List<ProductModel> get inventoryList  => filteredItems;
  @override
  initState() {
    // at the beginning, all users are shown
    filteredItems = getdata.cast<ProductModel>();
    super.initState();
  }

  getItem() async {
    final box = await Hive.openBox<ProductModel>('inventory');
    filteredItems = box.values.toList();
  }

  addFavoriteItems(ProductModel item) async {
    final box = await Hive.openBox<ProductModel>('inventory');
    filteredItems.add(item);
    item.color = Colors.red;
    box.add(item);
    filteredItems = box.values.toList();
  }
  deleteItem(int index) {
    final box = Hive.box<ProductModel>('inventory');
    box.deleteAt(index);
    filteredItems = box.values.toList();
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
    //List lastList = context.watch<AppProvider>().filteredItems;
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
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
            icon: Icon(Icons.favorite,
                size: 23,
                color:filteredItems.contains(element)
                    ? Colors.red
                    : Colors.grey[350]),
            onPressed: () {
              setState(() {
                if (!filteredItems.contains(element)) {
                  addFavoriteItems(element);
                } else {
                 deleteItem(filteredItems.indexOf(element));
                }
                getItem();
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
        padding: const EdgeInsets.only(left: 22),
        child: Row(
          children: [
            const SizedBox(
              width: 306,
              child: Text(
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
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Favorites()));
                },
                icon: const Icon(
                  Icons.bookmark,
                  size: 25,
                ))
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

class AppProvider with ChangeNotifier {
//  List _inventoryList = <ProductModel>[];
  // List get inventoryList => _inventoryList;
  List<ProductModel> _inventoryList = [];
  List<ProductModel> get filteredItems => _inventoryList;

  getItem() async {
    final box = await Hive.openBox<ProductModel>('inventory');
    _inventoryList = box.values.toList();
    notifyListeners();
  }

  addFavoriteItems(ProductModel item) async {
    final box = await Hive.openBox<ProductModel>('inventory');
    _inventoryList.add(item);
    item.color = Colors.red;
    box.add(item);
    _inventoryList = box.values.toList();
    notifyListeners();
  }
  deleteItem(int index) {
    final box = Hive.box<ProductModel>('inventory');
    box.deleteAt(index);
    _inventoryList = box.values.toList();
    notifyListeners();
  }


/*
 updateItem(int index, ProductModel item) {
    final box = Hive.box<ProductModel>('inventory');
    box.putAt(index, item);
    notifyListeners();
  }

  colors(ProductModel item){
    final box = Hive.box<Color>('colorBox');
    item.color = box.get(item.colorKey) ?? Colors.red;
    notifyListeners();
  }
  updateColor(ProductModel item, Color color) {
    final box = Hive.box<Color>('colorBox');
    item.colorKey = 'some_key'; // Set the color key
    item.color = color; // Set the color directly in the item
    box.put(item.colorKey, item.color!); // Store color in the 'colorBox'
    notifyListeners();
  }

}
class ColorAdapter extends TypeAdapter<Color> {
  @override
  final int typeId = 1;

  @override
  Color read(BinaryReader reader) {
    final colorValue = reader.readInt(); // Read the color value as an integer
    return Color(colorValue); // Convert the integer to a Color object
  }

  @override
  void write(BinaryWriter writer, Color obj) {
    final colorValue = obj.value; // Get the color value as an integer
    writer.writeInt(colorValue); // Write the color value to Hive
  }*/
}

*/