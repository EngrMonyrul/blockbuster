import 'package:blockbuster/core/views/desktopViews/desk_home_screen_view.dart';
import 'package:blockbuster/core/views/laptopViews/lapt_home_screen_view.dart';
import 'package:blockbuster/core/views/mobileViews/mobile_home_screen_view.dart';
import 'package:blockbuster/core/views/tabletLandscepViews/tab_land_home_screen_view.dart';
import 'package:blockbuster/core/views/tabletViews/tab_home_screen_view.dart';
import 'package:flutter/material.dart';

class AppResponsiveView extends StatefulWidget {
  const AppResponsiveView({super.key});

  @override
  State<AppResponsiveView> createState() => _AppResponsiveViewState();
}

class _AppResponsiveViewState extends State<AppResponsiveView> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth <= 480) {
          return const MobileHomeScreenView();
        } else if (constraints.maxWidth <= 768 && constraints.maxWidth > 480) {
          return const TabHomeScreenView();
        } else if (constraints.maxWidth <= 1024 && constraints.maxWidth > 768) {
          return const TabLandHomeScreenView();
        } else if (constraints.maxWidth <= 1600 && constraints.maxWidth > 1024) {
          return const LaptHomeScreenView();
        } else {
          return const DeskHomeScreenView();
        }
      },
    );
  }
}
