import 'package:flutter/material.dart';

class GMplusTheme {
  static const MaterialColor color = MaterialColor(
    _GMplusPrimaryValue,
    <int, Color>{
      50: Color.fromARGB(255, 192, 225, 249),
      100: Color.fromARGB(255, 163, 209, 247),
      200: Color.fromARGB(255, 104, 183, 248),
      300: Color.fromARGB(255, 72, 166, 244),
      400: Color.fromARGB(255, 35, 150, 244),
      500: Color.fromARGB(255, 20, 142, 242),
      600: Color.fromARGB(255, 27, 125, 210),
      700: Color.fromARGB(255, 16, 97, 178),
      800: Color.fromARGB(255, 10, 70, 139),
      900: Color.fromARGB(255, 11, 60, 135),
    },
  );
  static const int _GMplusPrimaryValue = 0xFF2196F3;

  static const Color background = Color(0XFF121212);

  static ButtonStyle outlineButtonStyle({
    Color color = Colors.white,
    double padding = 24,
  }) {
    return OutlinedButton.styleFrom(
      primary: color,
      padding: EdgeInsets.symmetric(vertical: padding),
      side: BorderSide(color: color),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(100)),
      ),
    );
  }

  static ThemeData theme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: background,
    primarySwatch: color,
    primaryColor: color,
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: outlineButtonStyle(),
    ),
    appBarTheme: ThemeData.dark().appBarTheme.copyWith(
      elevation: 0,
      backgroundColor: Colors.transparent,
      centerTitle: true,
    ),
  );
}
