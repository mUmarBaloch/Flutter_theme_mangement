import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:persistance/core/models/about_model.dart';
import 'package:persistance/screen/drawer.dart';
import 'package:persistance/core/theme.dart';
import 'package:persistance/screen/widgets/about.dart';

import '../constansts.dart';

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
              backgroundColor: CustomTheme.primaryColor,
              title: Text('Theme Management with SharedPref'),
            ),
            body: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(),
                  profileIcon(),
                  profileNameWidget(),
                  Container(
                    decoration: containerDecoration(),
                    width: 340,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      children: [
                        topAboutHeading(),
                        ...myAbout
                            .map(
                                (about) => AboutWidget(about.icon, about.about))
                            .toList(),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  CircleAvatar profileIcon() {
    return CircleAvatar(
      child: Icon(
        Icons.person_outline,
        color: CustomTheme.foregroundColor,
        size: 65,
      ),
      backgroundColor: CustomTheme.primaryColor,
      radius: 60,
    );
  }

  Container profileNameWidget() {
    return Container(
      padding: EdgeInsets.only(left: 20),
      decoration: containerDecoration(),
      child: Center(
        child: ListTile(
          title: Text(
            'Muhammad Umar Baloch',
            style: TextStyle(
              color: CustomTheme.baseColor,
              fontSize: 20,
            ),
          ),
          subtitle: Text(
            "Bs'Cs Sindh Uni, Mpk",
            style: TextStyle(
              color: CustomTheme.baseColor,
              fontSize: 15,
            ),
          ),
        ),
      ),
      width: 300,
      height: 100,
    );
  }

  Column topAboutHeading() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About',
          style: TextStyle(
              color: CustomTheme.baseColor,
              fontSize: 18,
              fontWeight: FontWeight.w600),
        ),
        Divider(
          color: CustomTheme.baseColor,
          thickness: 2,
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
