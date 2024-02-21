import 'package:blockbuster/core/providers/appbar_provider.dart';
import 'package:blockbuster/core/views/responsive_view.dart';
import 'package:blockbuster/utils/constants/image_const.dart';
import 'package:blockbuster/utils/theme/base_theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_)=> AppbarProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        darkTheme: AppBaseTheme.darkTheme,
        themeMode: ThemeMode.dark,
        home: const AppResponsiveView(),
      ),
    );
  }
}
