import 'package:flutter/material.dart';
import 'package:persistance/core/persistance.dart';
import 'package:persistance/screen/home_page.dart';
import 'package:persistance/core/theme.dart';

void main() async {
  await Persistance().loadTheme();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}
