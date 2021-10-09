import 'package:persistance/core/theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Persistance {
  SharedPreferences? pref;

  Future<SharedPreferences?> initPref() async =>
      pref = await SharedPreferences.getInstance();

  setPallete() async => await initPref().then((pref) =>
      pref!.setBool('isDefaultPallete', CustomTheme.isDefaultPallete));

  setTheme() async => await initPref()
      .then((pref) => pref!.setBool('isDark', CustomTheme.isDark));

  loadData() async => await initPref().then((pref) {
        var _themeFromPref = pref!.getBool('isDark') ?? CustomTheme.isDark;
        var _palleteFromPref =
            pref.getBool('isDefaultPallete') ?? CustomTheme.isDefaultPallete;
        CustomTheme.isDefaultPallete = _palleteFromPref;
        CustomTheme.isDark = _themeFromPref;
      });

  resetTheme() async {
    await initPref().then((pref) => pref!.remove('isDark'));
    // ignore: unnecessary_statements
    CustomTheme.isDark = false;
    controller.sink.add(false);
  }
}
