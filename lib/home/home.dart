import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islami_app/home/providers/my_provider.dart';
import 'package:islami_app/home/tabs/ahadeth.dart';
import 'package:islami_app/home/tabs/quran.dart';
import 'package:islami_app/home/tabs/radio.dart';
import 'package:islami_app/home/tabs/sepha.dart';
import 'package:islami_app/home/tabs/settings.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home';
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int SeclectedIcon = 0;

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Stack(
      children: [
        Image.asset(
          provider.mode == ThemeMode.light
              ? "assets/images/main_bg.png"
              : "assets/images/dark_bg.png",
          width: double.infinity,
          fit: BoxFit.fill,
        ),

        Scaffold(
          appBar: AppBar(title: Text('islami'.tr())),
          body: tabs[SeclectedIcon],
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: SeclectedIcon,
            onTap: (value) {
              SeclectedIcon = value;
              setState(() {});
            },

            items: [
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/quran.png")),
                label: 'quran'.tr(),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/ahadeth.png")),
                label: 'ahadeth'.tr(),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/sebha.png")),
                label: 'sebha'.tr(),
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/images/radio.png")),
                label: 'radio'.tr(),
              ),

              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: 'Settings'.tr(),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

List<Widget> tabs = [
  QuranTab(),
  AhadethTab(),
  SebhaTab(),
  RadioTab(),
  SettingsTab(),
];
