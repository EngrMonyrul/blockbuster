import 'package:blockbuster/common/constants/routes.dart';
import 'package:blockbuster/src/providers/home_screen_provider.dart';
import 'package:blockbuster/src/screens/home_screen.dart';
import 'package:blockbuster/utils/themes/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> HomeScreenProvider()),
      ],
      child: MaterialApp(
        title: "CineSphere",
        debugShowCheckedModeBanner: false,
        themeMode: ThemeMode.dark,
        darkTheme: AppBaseTheme.darkThemeData,
        initialRoute: AppRoutes.initialRoutes,
        routes: AppRoutes.appRoutes,
      ),
    );
  }
}
