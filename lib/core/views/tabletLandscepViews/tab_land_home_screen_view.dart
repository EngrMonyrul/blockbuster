import 'package:flutter/material.dart';

class TabLandHomeScreenView extends StatefulWidget {
  const TabLandHomeScreenView({super.key});

  @override
  State<TabLandHomeScreenView> createState() => _TabLandHomeScreenViewState();
}

class _TabLandHomeScreenViewState extends State<TabLandHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Tablet Landscape Home Screen View"),
      ),
    );
  }
}
