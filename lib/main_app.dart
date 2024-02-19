import 'package:flutter/material.dart';
import 'package:practica3_5c/home_screen.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 48, 54, 48),
        appBarTheme: const AppBarTheme(color: Color.fromARGB(153, 17, 231, 135),),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            color: Color.fromARGB(153, 168, 168, 168),
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'sans-serif',
          ),
        )
      ),

    );
  }
}