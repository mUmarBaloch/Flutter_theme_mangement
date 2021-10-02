import 'package:flutter/material.dart';
import 'package:persistance/core/theme.dart';

class AboutWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  const AboutWidget(this.icon, this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(
            icon,
            color: CustomTheme.baseColor,
          ),
          Text(
            "$title",
            style: TextStyle(
                color: CustomTheme.baseColor,
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
