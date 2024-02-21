import 'package:flutter/material.dart';

class DeskHomeScreenView extends StatefulWidget {
  const DeskHomeScreenView({super.key});

  @override
  State<DeskHomeScreenView> createState() => _DeskHomeScreenViewState();
}

class _DeskHomeScreenViewState extends State<DeskHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Desktop Home Screen View"),
      ),
    );
  }
}
