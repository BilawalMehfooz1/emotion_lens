import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
  textTheme: GoogleFonts.euphoriaScriptTextTheme(),
);
