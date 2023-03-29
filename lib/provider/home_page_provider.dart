import 'package:flutter/material.dart';

class HomePageProvider with ChangeNotifier {
  bool? eligible;
  String eligibleMeassage = '';

  void checkeligiblelity(int age) {
    if (age >= 18) {
      eligible = true;
      eligibleMeassage = 'You are eligible';
      notifyListeners();
    } else {
      eligible = false;
      eligibleMeassage = 'you are not eligible';
      notifyListeners();
    }
  }
}
