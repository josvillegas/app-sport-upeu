// ignore_for_file: file_names

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sport_upeu/resources/constans.dart';
import 'package:sport_upeu/screens/splashupeu_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 8), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const SplashScreenUpeu()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(color: Constants.primaryColor),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage("images/sports.gif"),
              height: 120,
              width: 120,
            )
          ],
        ),
      ),
    );
  }
}
