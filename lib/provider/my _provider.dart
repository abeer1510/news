import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier{
  bool isDarkMode = false;
  ThemeMode get themeMode => isDarkMode ? ThemeMode.dark : ThemeMode.light;
  void toggleTheme(bool isDark) {
    isDarkMode = isDark;
    notifyListeners();
  }

}