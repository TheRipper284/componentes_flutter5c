
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme{
  //Declaraciones de color 
  static const primaryColor = Color.fromARGB(195, 180, 13, 13); //195, 114, 37, 37
  static const accentColor = Color.fromARGB(255, 22, 100, 6);  //255, 209, 147, 14
  static const backColor = Color.fromARGB(255, 231, 220, 243);
  static const iconColor = Color.fromARGB(255, 163, 161, 17);

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
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amberAccent,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness:7.0,
            fontStyle: FontStyle.italic,
          ),
          headlineMedium: GoogleFonts.aclonica(
            color: primaryColor,
            fontSize: 21.5,
            fontWeight: FontWeight.w500,
            decoration: TextDecoration.underline,
            decorationColor: Colors.amberAccent,
            decorationStyle: TextDecorationStyle.solid,
            decorationThickness:1.5,
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