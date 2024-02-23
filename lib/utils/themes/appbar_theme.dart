import 'package:flutter/material.dart';

class AppbarTheme {
  AppbarTheme._();

  static const darkAppBarTheme = AppBarTheme(
    titleTextStyle: TextStyle(color: Colors.white),
    backgroundColor: Colors.transparent,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(0))),
  );
}