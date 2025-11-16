import 'package:flutter/material.dart';

ThemeData appTheme = ThemeData(
  colorSchemeSeed: Colors.deepOrangeAccent,

  // app bar Theme
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.deepOrangeAccent,
    foregroundColor: Colors.white70,
    centerTitle: true,
  ),

  // elevated Button Theme
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepOrangeAccent,
      foregroundColor: Colors.white70,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      textStyle: TextStyle(fontSize: 18),
    ),
  ),

  //text fields theme
  inputDecorationTheme: InputDecorationTheme(
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(5)),

    fillColor: const Color.fromARGB(255, 255, 255, 255),
    filled: true,
  ),

  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor: Colors.deepOrangeAccent,
    foregroundColor: Colors.white70,
  ),
);
