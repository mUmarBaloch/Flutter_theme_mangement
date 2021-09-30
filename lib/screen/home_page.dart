import 'package:flutter/material.dart';
import 'package:persistance/screen/drawer.dart';
import 'package:persistance/core/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: controller.stream,
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: CustomTheme.baseColor,
            drawer: CustomDrawer(),
            appBar: AppBar(
              title: Text('Theme Management with SharedPref'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: CustomTheme.foregroundColor,
                    width: 200,
                    height: 200,
                  ),
                  Container(
                    color: CustomTheme.foregroundColor,
                    width: 200,
                    height: 100,
                  ),
                  Container(
                    color: CustomTheme.foregroundColor,
                    width: 300,
                    height: 300,
                  )
                ],
              ),
            ),
          );
        });
  }
}
