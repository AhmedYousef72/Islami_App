import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = Color(0xffB7935F);
  static Color primaryDarkColor = Color(0xff141A2E);
  static Color blackColor = Color(0xff000000);
  static Color YellowColor = Color(0xffFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryColor,
    dividerColor: primaryColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: true,
      showUnselectedLabels: false,
      backgroundColor: primaryColor,
      selectedItemColor: blackColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.black, size: 30),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w700,
      ),
    ),

    //  طريقه أخري لاستخدام الألوان
    // colorScheme: ColorScheme(
    //   brightness: brightness,
    //   primary: primary,
    //   onPrimary: onPrimary,
    //   secondary: secondary,
    //   onSecondary: onSecondary,
    //   error: error,
    //   onError: onError,
    //   surface: surface,
    //   onSurface: onSurface
    //   ),
    textTheme: TextTheme(
      //   quran tab هتلاقيني استخدمت الطريقه دي في ال
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.black,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDarkColor,
    dividerColor: YellowColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      backgroundColor: primaryDarkColor,
      selectedItemColor: YellowColor,
      unselectedItemColor: Colors.white,
      type: BottomNavigationBarType.fixed,
    ),
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: Colors.white, size: 30),
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.w700,
      ),
    ),

    //  طريقه أخري لاستخدام الألوان
    // colorScheme: ColorScheme(
    //   brightness: brightness,
    //   primary: primary,
    //   onPrimary: onPrimary,
    //   secondary: secondary,
    //   onSecondary: onSecondary,
    //   error: error,
    //   onError: onError,
    //   surface: surface,
    //   onSurface: onSurface
    //   ),
    textTheme: TextTheme(
      //   quran tab هتلاقيني استخدمت الطريقه دي في ال
      bodyLarge: GoogleFonts.elMessiri(
        fontSize: 30,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
      bodyMedium: GoogleFonts.elMessiri(
        fontSize: 25,
        color: YellowColor,
        fontWeight: FontWeight.w600,
      ),
      bodySmall: GoogleFonts.elMessiri(
        fontSize: 20,
        color: Colors.white,
        fontWeight: FontWeight.w600,
      ),
    ),
  );
}
