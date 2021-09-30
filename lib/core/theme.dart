import 'dart:async';

import 'package:flutter/material.dart';
import 'package:persistance/core/persistance.dart';

StreamController controller = StreamController();

class CustomTheme {
  static bool isDark = false;
  static Color? get baseColor => isDark ? Colors.grey[900] : Colors.white;
  static Color? get foregroundColor => isDark ? Colors.white : Colors.grey[900];

  static switchToDarkMode() {
    isDark = true;
    Persistance().setTheme();
    controller.sink.add('changed');
    print('dark mode');
  }

  static switchToLightMode() {
    isDark = false;

    Persistance().setTheme();
    controller.sink.add('changed');
    print('light mode');
  }
}
