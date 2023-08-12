import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

final kColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.redAccent, brightness: Brightness.light);

final kDarkColorScheme = ColorScheme.fromSeed(
  seedColor: Colors.red,
  brightness: Brightness.dark,
);
final ThemeData lightTheme = ThemeData().copyWith(
  useMaterial3: true,
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    elevation: 0,
    foregroundColor: Colors.red[600],
    backgroundColor: kColorScheme.background,
    
  ),
  // scaffoldBackgroundColor:
);

final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: kDarkColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      elevation: 0,
      backgroundColor: Colors.red[900],
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: Colors.red[900],
    ));
