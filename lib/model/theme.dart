import 'package:flutter/material.dart';

class MyTheme {
  static Color primryColor = const Color(0xff676797);

  static ThemeData lightTheme = ThemeData(

     
    appBarTheme: const AppBarTheme(elevation: 0, color: Colors.white),
    scaffoldBackgroundColor: Colors.white,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: primryColor,
      ),
      bodyMedium: const TextStyle(
        color: Colors.white,
        fontSize: 15,
        fontWeight: FontWeight.w400,
      ),
      bodySmall: const TextStyle(
        color: Colors.white,
        fontSize: 10,
        fontWeight: FontWeight.w400,
      ),
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
