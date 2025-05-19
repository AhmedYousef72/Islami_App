import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:islami_app/home/bottom_sheets/language_bottomsheet.dart';
import 'package:islami_app/home/bottom_sheets/theme_bottomsheet.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:islami_app/my_theme_data.dart';
import 'package:provider/provider.dart';

class SettingsTab extends StatelessWidget {
  const SettingsTab({super.key});

  @override
  Widget build(BuildContext context) {
    var pro = Provider.of<MyProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("theme".tr()),
          SizedBox(height: 10),

          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                context: context,
                builder: (context) {
                  return Container(child: ThemeBottomsheet());
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text(
                pro.mode == ThemeMode.dark ? "dark".tr() : "light".tr(),
              ),
            ),
          ),

          SizedBox(height: 44),

          Text("language".tr()),

          SizedBox(height: 12),

          InkWell(
            onTap: () {
              showModalBottomSheet(
                isDismissible: true,
                context: context,
                builder: (context) {
                  return Container(child: LanguageBottomsheet());
                },
              );
            },
            child: Container(
              padding: EdgeInsets.all(12),
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(22),
                border: Border.all(color: MyThemeData.primaryColor),
              ),
              child: Text(
                context.locale.languageCode == "ar"
                    ? "arabic".tr()
                    : "english".tr(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
