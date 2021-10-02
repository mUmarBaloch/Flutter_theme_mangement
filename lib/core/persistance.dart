import 'package:persistance/core/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Persistance {
  SharedPreferences? pref;

  Future<SharedPreferences?> initPref() async =>
      pref = await SharedPreferences.getInstance();

  setTheme() async => await initPref()
      .then((pref) => pref!.setBool('isDark', CustomTheme.isDark));

  loadTheme() async => await initPref().then((pref) {
        var _themeFromPref = pref!.getBool('isDark') ?? CustomTheme.isDark;
        CustomTheme.isDark = _themeFromPref;
      });

  resetTheme() async {
    await initPref().then((pref) => pref!.remove('isDark'));
    // ignore: unnecessary_statements
    CustomTheme.isDark = false;
    controller.sink.add(false);
  }
}
