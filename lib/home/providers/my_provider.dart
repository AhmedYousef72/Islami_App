import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  Future<void> getTheme() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    mode = prefs.getBool('isdark') ?? false ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }

  Future<void> changeTheme(ThemeMode thememode) async {
    mode = thememode;
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isdark', mode == ThemeMode.dark);

    notifyListeners();
  }

  // changeLanguage(BuildContext context, String code) {
  //   context.setLocale(Locale(code));
  //   notifyListeners();
  // }
}
