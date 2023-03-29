import 'package:flutter/material.dart';

class FavPageProvider with ChangeNotifier {
  List selectItem = [];

  void addItem(index) {
    selectItem.add(index);
    notifyListeners();
  }
  void removeItem(index) {
    selectItem.remove(index);
    notifyListeners();
  }
}
