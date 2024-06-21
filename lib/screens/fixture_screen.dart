import 'package:flutter/material.dart';
import 'package:sport_upeu/widgets/fixture_appbar_widget.dart';
import 'package:sport_upeu/widgets/fixture_widget.dart';

class FixtureScreen extends StatefulWidget {
  const FixtureScreen({super.key});

  @override
  State<FixtureScreen> createState() => _EventsScreenState();
}

class _EventsScreenState extends State<FixtureScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [FixtureAppbarWidget(), FixtureWidget()],
            ),
          ),
        ),
      ),
    );
  }
}
