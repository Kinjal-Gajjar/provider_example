import 'package:flutter/material.dart';

class ExampleProvider with ChangeNotifier{

  double value=0.6;

  void updateValue(double val){
value=val;
notifyListeners();
  }
}