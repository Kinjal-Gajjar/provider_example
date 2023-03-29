import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier{
var thememode=ThemeMode.light;
void setTheme(mode){
  thememode=mode;
  notifyListeners();
}
}