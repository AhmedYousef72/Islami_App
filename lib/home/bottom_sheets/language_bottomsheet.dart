import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';

class LanguageBottomsheet extends StatelessWidget {
  const LanguageBottomsheet({super.key});
  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    Locale currentLocale = context.locale;
    return Container(
      decoration: BoxDecoration(
        color:
            pro.mode == ThemeMode.dark
                ? MyThemeData.primaryDarkColor
                : Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      height: MediaQuery.of(context).size.height * 0.3,
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          children: [
            InkWell(
              onTap: () {
                // pro.changeLanguage(context, "ar");
                context.setLocale(Locale("ar"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "arabic".tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:
                          currentLocale == Locale("ar")
                              ? MyThemeData.primaryColor
                              : pro.mode == ThemeMode.dark
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),

                  currentLocale == Locale("ar")
                      ? Icon(
                        Icons.done,
                        size: 30,
                        color: MyThemeData.primaryColor,
                      )
                      : Icon(null),
                ],
              ),
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                // pro.changeLanguage(context, "en");
                context.setLocale(Locale("en"));
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "english".tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:
                          currentLocale == Locale("en")
                              ? MyThemeData.primaryColor
                              : pro.mode == ThemeMode.dark
                              ? Colors.white
                              : Colors.black,
                    ),
                  ),

                  currentLocale == Locale("en")
                      ? Icon(
                        Icons.done,
                        size: 30,
                        color: MyThemeData.primaryColor,
                      )
                      : Icon(null),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
