

import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../models/model.dart';


class AppProvider with ChangeNotifier {
  List<ProductModel> _inventoryList = [];
  List<ProductModel> get inventoryList => _inventoryList;

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
    notifyListeners();
  }

  deleteItem(int index) async {
    final box = Hive.box<ProductModel>('inventory');
    box.deleteAt(index);
    notifyListeners();
  }
}