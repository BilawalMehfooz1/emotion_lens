import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';

final kColorScheme = ColorScheme.fromSeed(
    seedColor: Colors.redAccent, brightness: Brightness.light);

final kDarkColorScheme =
    ColorScheme.fromSeed(seedColor: Colors.pink, brightness: Brightness.dark);
final ThemeData lightTheme = ThemeData().copyWith(
  useMaterial3: true,
  colorScheme: kColorScheme,
  appBarTheme: const AppBarTheme().copyWith(
    elevation: 0,
    backgroundColor: kColorScheme.primary,
    foregroundColor: kColorScheme.onPrimary,
  ),
);

final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    colorScheme: kDarkColorScheme,
    appBarTheme: const AppBarTheme().copyWith(
      elevation: 0,
      backgroundColor: Color.fromARGB(255, 125, 10, 10),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kDarkColorScheme.secondaryContainer,
    ));
