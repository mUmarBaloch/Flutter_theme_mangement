import 'package:flutter/material.dart';
import 'package:persistance/core/theme.dart';
import 'package:persistance/screen/settings.dart';

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: CustomTheme.baseColor,
        child: Column(
          children: [
            DrawerHeader(
                child: Container(
              height: 300,
              child: Center(
                child: ListTile(
                  title: Text(
                    'Umar Baloch',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                  subtitle: Text(
                    'Sindh University MirpurKhas',
                    style: TextStyle(color: CustomTheme.foregroundColor),
                  ),
                ),
              ),
            )),
            ListTile(
                onTap: () => setState(
                      () => CustomTheme.switchToLightMode(),
                    ),
                title: Text(
                  'Light Mode',
                  style: TextStyle(color: CustomTheme.foregroundColor),
                ),
                leading: Icon(
                  Icons.light_mode,
                  color: CustomTheme.isDark
                      ? CustomTheme.foregroundColor
                      : Colors.deepPurple,
                )),
            ListTile(
              onTap: () => setState(
                () => CustomTheme.switchToDarkMode(),
              ),
              title: Text(
                'Dark Mode',
                style: TextStyle(color: CustomTheme.foregroundColor),
              ),
              leading: Icon(
                Icons.dark_mode,
                color: !CustomTheme.isDark
                    ? CustomTheme.foregroundColor
                    : Colors.deepPurple,
              ),
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(color: CustomTheme.foregroundColor),
              ),
              onTap: () => Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Settings())),
              subtitle: Text(
                'change theme mode with settings also',
                style: TextStyle(color: CustomTheme.foregroundColor),
              ),
              leading: Icon(
                Icons.settings,
                color: CustomTheme.foregroundColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
