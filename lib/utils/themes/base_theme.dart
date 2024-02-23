import 'package:blockbuster/utils/themes/appbar_theme.dart';
import 'package:blockbuster/utils/themes/card_theme.dart';
import 'package:blockbuster/utils/themes/elevatedbutton_theme.dart';
import 'package:flutter/material.dart';

class AppBaseTheme {
  AppBaseTheme._();

  static final darkThemeData = ThemeData(
    fontFamily: "Poppins",
    scaffoldBackgroundColor: const Color(0xFF160d2e).withOpacity(0.9),
    appBarTheme: AppbarTheme.darkAppBarTheme,
    elevatedButtonTheme: AppElevatedButtonTheme.darkElevatedButton,
    cardTheme: AppCardTheme.darkCardTheme,
  );
}
