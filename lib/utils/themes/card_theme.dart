import 'package:flutter/material.dart';

class AppCardTheme {
  AppCardTheme._();

  static final darkCardTheme  = CardTheme().copyWith(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
  );
}