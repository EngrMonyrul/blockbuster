import 'package:flutter/material.dart';

class AppElevatedButtonTheme {
  AppElevatedButtonTheme._();

  static final darkElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.transparent,
      foregroundColor: Colors.white,
      shape: BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
      side: const BorderSide(color: Colors.white),
    ),
  );
}