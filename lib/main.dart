import 'package:flutter/material.dart';
import 'package:emotion_lens/models/theme.dart';
import 'package:emotion_lens/screens/tabs_screen.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    MaterialApp(
      // theme: lightTheme,
      darkTheme: darkTheme,
      home: const ProviderScope(child: MyApp()),
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
