
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Declaraciones de color 
  static const primaryColor = Color.fromARGB(2555, 0, 0, 0); //195, 114, 37, 37
  static const accentColor = Color.fromARGB(255, 14, 16, 112);  //255, 209, 147, 14
  static const backColor = Color.fromARGB(255, 255, 255, 255);
  static const iconColor = Color.fromARGB(255, 39, 50, 54);

  //Declaraciones de tema claro
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    scaffoldBackgroundColor: backColor,
        appBarTheme: AppBarTheme
          (color: primaryColor,
          titleTextStyle: GoogleFonts.lato(
            color: backColor,
            fontSize: 28.5,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: iconColor,
          size: 35.0,
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(
              backColor),

            foregroundColor: MaterialStateProperty.all(
              accentColor
              ),
            textStyle: MaterialStateProperty.all(
              GoogleFonts.abrilFatface(
                fontSize: 22.0,
              ),
            )
          ),
        ),
        textTheme:  TextTheme(
          headlineLarge: GoogleFonts.aclonica(
            color: primaryColor,
            fontSize: 20.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.redAccent,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness:7.0,
            fontStyle: FontStyle.italic,
          ),
          headlineMedium: GoogleFonts.aclonica(
            color: primaryColor,
            fontSize: 17.5,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.red,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness:1.5,
          ),
          bodySmall: GoogleFonts.aBeeZee(
            color: accentColor,
            fontSize: 14.5,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic
          )
        ),
  );
}