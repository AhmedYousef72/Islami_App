import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class MyProvider extends ChangeNotifier {
  ThemeMode mode = ThemeMode.light;
  changeTheme(ThemeMode thememode) {
    mode = thememode;
    notifyListeners();
  }

  // changeLanguage(BuildContext context, String code) {
  //   context.setLocale(Locale(code));
  //   notifyListeners();
  // }
}
