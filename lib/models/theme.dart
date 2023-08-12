import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.light,
  colorScheme: const ColorScheme.light(
    primary: Color.fromRGBO(251, 2, 39, 1),
  ),
  primaryColor: const Color.fromRGBO(251, 2, 39, 1), // Red color
  scaffoldBackgroundColor: const Color.fromRGBO(255, 250, 240, 1.0),
  appBarTheme: AppBarTheme(
    foregroundColor: const Color.fromRGBO(251, 2, 39, 1),
    elevation: 0,
    color: const Color.fromRGBO(255, 250, 240, 1.0),
    titleTextStyle: TextStyle(
      fontSize: 24.0,
      color: Colors.grey[700],
      fontWeight: FontWeight.bold,
    ),
  ),
  // bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //   unselectedItemColor: Colors.grey[700],
  //   selectedItemColor: const Color.fromRGBO(251, 2, 39, 1),
  // ),
  // iconTheme: IconThemeData(
  //   color: Colors.grey[700],
  // ),
);
