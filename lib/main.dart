import 'package:flutter/material.dart';
import 'package:sport_upeu/screens/Splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Main Screen',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
