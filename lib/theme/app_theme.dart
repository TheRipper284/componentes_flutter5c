
import 'package:flutter/material.dart';

class AppTheme{
  //Declaraciones de color 
  static const primaryColor = Color.fromARGB(255, 255, 255, 255);
  static const backColor = Color.fromARGB(255, 90, 56, 17);

  //Declaraciones de tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: primaryColor),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: primaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        )
  );
}