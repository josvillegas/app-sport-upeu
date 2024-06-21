import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sport_upeu/resources/constans.dart';
import 'package:sport_upeu/screens/login_screen.dart';

class SplashScreenUpeu extends StatefulWidget {
  const SplashScreenUpeu({super.key});

  @override
  State<SplashScreenUpeu> createState() => _SplashScreenUpeuState();
}

class _SplashScreenUpeuState extends State<SplashScreenUpeu> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.push(context,
          MaterialPageRoute(builder: (context) => const LoginScreen()));
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
              image: AssetImage("images/logoupeuwhite.png"),
              height: 160,
              width: 160,
            )
          ],
        ),
      ),
    );
  }
}
