import 'package:flutter/material.dart';
import 'package:food_delivery_app/themes/dark_mode.dart';
import 'package:food_delivery_app/themes/light_mode.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeData _themeData = lightMode; // define the STATE
  ThemeData get themeData => _themeData; // define the GETTER

  bool get isDarkMode => _themeData == darkMode; // define the GETTER

  // define the SETTER
  set themeData(ThemeData theme) {
    _themeData = theme;
    notifyListeners();
  }

  // define the TOGGLE  BEHAVIOR
  void toggleTheme() {
    if (_themeData == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
