import 'package:flutter/material.dart';

class MobileHomeScreenView extends StatefulWidget {
  const MobileHomeScreenView({super.key});

  @override
  State<MobileHomeScreenView> createState() => _MobileHomeScreenViewState();
}

class _MobileHomeScreenViewState extends State<MobileHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Mobile Home Screen View"),
      ),
    );
  }
}
