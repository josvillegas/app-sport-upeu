import 'package:flutter/material.dart';

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State<MapScreen> createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SizedBox(
      height: double.infinity,
      width: double.infinity,
      child: Image(image: AssetImage("images/mapaupeu.png")),
    ));
  }
}
