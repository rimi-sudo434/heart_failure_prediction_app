import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const HeartFailureApp());
}

class HeartFailureApp extends StatelessWidget {
  const HeartFailureApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Heart Failure Prediction',

      // 🌞 LIGHT MODE
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.light,
        ),
      ),

      // 🌙 DARK MODE
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
          brightness: Brightness.dark,
        ),
      ),

      // 🔁 AUTO SWITCH BASED ON PHONE SETTINGS
      themeMode: ThemeMode.system,

      home: const HomeScreen(),
    );
  }
}