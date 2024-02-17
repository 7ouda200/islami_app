import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryLight = Color(0xFFB7935F);
  static Color primaryDark=Color(0xFF141A2E);
  static Color black = Color(0xFF242424);
  static Color white = Colors.white;
  static Color gold = Color(0xFFFACC1D);

  static ThemeData lightTheme = ThemeData(
    primaryColor: primaryLight,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: black,
      backgroundColor: primaryLight,
      unselectedLabelStyle: TextStyle(color: white),
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle:
          TextStyle(color: black, fontSize: 30.0, fontWeight: FontWeight.bold),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: black,
      ),
      titleLarge:
          TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: black),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: primaryDark,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedItemColor: gold,
      backgroundColor: primaryDark,
      unselectedLabelStyle: TextStyle(color: white),
      unselectedItemColor: white,
    ),
    appBarTheme: AppBarTheme(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
      titleTextStyle:
      TextStyle(color: white, fontSize: 30.0, fontWeight: FontWeight.bold),
    ),
    textTheme: TextTheme(
      headlineSmall: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.w400,
        color: white,
      ),
      titleLarge:
      TextStyle(fontSize: 20, fontWeight: FontWeight.w400, color: gold),
    ),


  );
}
