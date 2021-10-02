import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About {
  IconData icon;
  String about;

  About({required this.icon, required this.about});
}

List<About> myAbout = [
  About(
      icon: Icons.low_priority_outlined, about: 'Basic education from Samaro'),
  About(icon: Icons.school_outlined, about: 'Diploma from Aptech Mpk'),
  About(icon: Icons.developer_board_outlined, about: 'Programmer since 2k17'),
  About(icon: Icons.smartphone_outlined, about: 'Started App dev from 2k19'),
];
