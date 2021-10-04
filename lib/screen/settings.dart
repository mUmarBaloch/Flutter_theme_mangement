import 'package:flutter/material.dart';
import 'package:persistance/core/persistance.dart';
import 'package:persistance/core/theme.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: controller.stream,
        builder: (context, snapshot) {
          return Scaffold(
            backgroundColor: CustomTheme.baseColor,
            appBar: AppBar(
              title: Text('Settings'),
            ),
            body: Column(
              children: [
                optionTile(() => null, Icons.person,
                    title: 'Edit profile',
                    subtitle: 'change your profile',
                    isDarkBtn: false),
                optionTile(() => null, Icons.edit,
                    title: 'Edit profile',
                    subtitle: 'change your profile',
                    isDarkBtn: false),
                optionTile(() => null, Icons.edit,
                    title: 'change about',
                    subtitle: 'edits your profile\'s about',
                    isDarkBtn: false),
                SizedBox(
                  height: 70,
                ),
                optionTile(() => null, Icons.color_lens,
                    title: 'change color pallete',
                    subtitle: 'change theme flavour',
                    isDarkBtn: false),
                optionTile(CustomTheme.switchToDarkMode, Icons.dark_mode,
                    title: 'set to dark mode',
                    subtitle: 'dark shade',
                    isThemeTile: true,
                    isDarkBtn: true),
                optionTile(
                    () => CustomTheme.switchToLightMode(), Icons.light_mode,
                    title: 'set to light mode',
                    subtitle: 'light shade',
                    isThemeTile: true,
                    isDarkBtn: false),
                Spacer(),
                optionTile(() => Persistance().resetTheme(), Icons.reset_tv,
                    title: 'reset data',
                    subtitle: 'resets theme persistance',
                    isDarkBtn: false),
                SizedBox(
                  height: 060,
                ),
              ],
            ),
          );
        });
  }

  ListTile optionTile(onTap, IconData icon,
      {required String title,
      String? subtitle,
      bool isThemeTile = false,
      required bool isDarkBtn}) {
    return ListTile(
      onTap: () => onTap(),
      leading: !isThemeTile
          ? Icon(icon, color: CustomTheme.foregroundColor)
          : !isDarkBtn
              ? Icon(Icons.light_mode,
                  color: !CustomTheme.isDark
                      ? Colors.deepPurple
                      : CustomTheme.foregroundColor)
              : Icon(Icons.dark_mode,
                  color: CustomTheme.isDark
                      ? Colors.deepPurple
                      : CustomTheme.foregroundColor),
      title: Text(
        '$title',
        style: TextStyle(color: CustomTheme.foregroundColor),
      ),
      subtitle: Text(
        subtitle ?? '',
        style: TextStyle(color: CustomTheme.foregroundColor),
      ),
    );
  }
}
