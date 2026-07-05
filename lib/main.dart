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
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.red,
        ),
      ),
      home: const HomeScreen(),
    );
  }
}