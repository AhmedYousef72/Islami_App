import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';

class ThemeBottomsheet extends StatelessWidget {
  const ThemeBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
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
                pro.changeTheme(ThemeMode.light);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "light".tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:
                          pro.mode == ThemeMode.light
                              ? MyThemeData.YellowColor
                              : Colors.white,
                    ),
                  ),
                  pro.mode == ThemeMode.dark
                      ? SizedBox()
                      : Icon(
                        Icons.done,
                        size: 30,
                        color: MyThemeData.primaryColor,
                      ),
                ],
              ),
            ),
            SizedBox(height: 12),
            InkWell(
              onTap: () {
                pro.changeTheme(ThemeMode.dark);
                Navigator.pop(context);
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "dark".tr(),
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color:
                          pro.mode == ThemeMode.dark
                              ? MyThemeData.YellowColor
                              : Colors.black,
                    ),
                  ),
                  pro.mode == ThemeMode.light
                      ? SizedBox()
                      : Icon(
                        Icons.done,
                        size: 30,
                        color: MyThemeData.primaryColor,
                      ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
