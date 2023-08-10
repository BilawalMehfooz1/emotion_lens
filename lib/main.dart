import 'package:flutter/material.dart';
import 'package:emotion_lens/models/theme.dart';
import 'package:emotion_lens/screens/tabs_screen.dart';

void main() {
  runApp(
    MaterialApp(
      theme: lightTheme,
      home: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const TabsScreen();
  }
}
