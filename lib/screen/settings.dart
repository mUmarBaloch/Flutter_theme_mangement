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
                ListTile(
                  onTap: () => {},
                  leading:
                      Icon(Icons.person, color: CustomTheme.foregroundColor),
                  title: Text(
                    'Edit profile',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'change your profile',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                ListTile(
                  onTap: () => {},
                  leading: Icon(Icons.info, color: CustomTheme.foregroundColor),
                  title: Text(
                    'change about',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    "edits your profile's about",
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                SizedBox(
                  height: 70,
                ),
                ListTile(
                  onTap: () => {},
                  leading: Icon(Icons.color_lens,
                      color: CustomTheme.foregroundColor),
                  title: Text(
                    'Change Color Pallete',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'change flavour',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                ListTile(
                  onTap: () => CustomTheme.switchToDarkMode(),
                  leading: Icon(Icons.dark_mode,
                      color: CustomTheme.isDark
                          ? Colors.deepPurple
                          : CustomTheme.foregroundColor),
                  title: Text(
                    'Set to Dark Mode',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'black shade',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                ListTile(
                  onTap: () => CustomTheme.switchToLightMode(),
                  leading: Icon(Icons.light_mode,
                      color: !CustomTheme.isDark
                          ? Colors.deepPurple
                          : CustomTheme.foregroundColor),
                  title: Text(
                    'Set to Light Mode',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'white shade',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                Spacer(),
                ListTile(
                  onTap: () => Persistance().resetTheme(),
                  leading:
                      Icon(Icons.reset_tv, color: CustomTheme.foregroundColor),
                  title: Text(
                    'Reset data',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'resets theme persistance',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
                SizedBox(
                  height: 060,
                ),
              ],
            ),
          );
        });
  }
}
