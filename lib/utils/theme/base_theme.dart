import 'package:blockbuster/utils/theme/app_colorScheme.dart';
import 'package:blockbuster/utils/theme/app_textTheme.dart';
import 'package:flutter/material.dart';

class AppBaseTheme {
  AppBaseTheme._();

  /*---------------> Dark Theme <---------------*/
  static final darkTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: const Color(0xFF0f052b),
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    fontFamily: "Poppins",
    colorScheme: AppColorScheme.darkColorScheme,
    textTheme: AppTextTheme.darkTextTheme,
  );
}