
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Declaraciones de color 
  static const primaryColor = Color.fromARGB(195, 114, 37, 37);
  static const accentColor = Color.fromARGB(195, 0, 0, 0);
  static const backColor = Color.fromARGB(255, 231, 220, 243);

  //Declaraciones de tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: const AppBarTheme(color: primaryColor),
        textTheme:  TextTheme(
          headlineLarge: GoogleFonts.aclonica(
            color: primaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amberAccent,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness:7.0,
            fontStyle: FontStyle.italic,
          ),
          bodySmall: GoogleFonts.aBeeZee(
            color: accentColor,
            fontSize: 18.5,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          )
        ),
  );
}