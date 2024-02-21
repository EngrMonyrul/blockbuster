import 'package:flutter/material.dart';

class TabHomeScreenView extends StatefulWidget {
  const TabHomeScreenView({super.key});

  @override
  State<TabHomeScreenView> createState() => _TabHomeScreenViewState();
}

class _TabHomeScreenViewState extends State<TabHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Tablet Home Screen View"),
      ),
    );
  }
}
