import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persistance/core/persistance.dart';

StreamController controller = StreamController.broadcast();

enum Pallete { Deeppurple, Orangify }

class CustomTheme {
  static bool isDark = false;
  static bool isDefaultPallete = true;
  static Color? get primaryColor =>
      isDefaultPallete ? Colors.deepPurple : Colors.blueGrey[600];
  static Color? get baseColor => isDark ? Colors.grey[900] : Colors.white;
  static Color? get foregroundColor => isDark ? Colors.white : Colors.grey[900];

  static changePallete() {
    isDefaultPallete = isDefaultPallete ? false : true;
    Persistance().setPallete();
    controller.sink.add('changed pallete');
    print(isDefaultPallete);
  }

  static switchToDarkMode() {
    isDark = true;
    Persistance().setTheme();
    controller.sink.add('change');
    print('dark mode');
  }

  static switchToLightMode() {
    isDark = false;

    Persistance().setTheme();
    controller.sink.add('changed');
    print('light mode');
  }
}
