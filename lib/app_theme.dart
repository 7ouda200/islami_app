import 'package:flutter/material.dart';

class AppTheme {
  static Color primaryLight = Color(0xFFB7935F);
  static Color black = Color(0xFF242424);
  static Color white = Colors.white;
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
    ),
  );

  static ThemeData darkTheme = ThemeData();
}
