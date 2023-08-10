import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData lightTheme = ThemeData(
  primarySwatch: Colors.pink,
  primaryColor: Colors.pink.shade300,
  brightness: Brightness.light,
  colorScheme: ColorScheme.light(
    primary: Colors.pink.shade300, // Medium Soft Pink
    primaryContainer: Colors.pink.shade200, // Lighter Soft Pink
    secondary: Colors.pink.shade100, // Lightest Soft Pink
    background: const Color.fromRGBO(255, 253, 242, 1.0), // Very Soft Cream
    surface: const Color.fromRGBO(255, 248, 235, 1.0), // Warm Soft Ivory
    error: const Color.fromRGBO(255, 95, 85, 1.0), // Muted red for contrasts
  ),
  scaffoldBackgroundColor:
      const Color.fromRGBO(255, 250, 240, 1.0), // As per your preference
  appBarTheme: AppBarTheme(
    centerTitle: true,
    elevation: 0,
    color: const Color.fromRGBO(255, 250, 240, 1.0),
    titleTextStyle: GoogleFonts.balooTamma2(
      fontSize: 24.0,
      color: Colors.black,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: GoogleFonts.balooTamma2TextTheme(),
);
