import 'package:blockbuster/common/constants/string.dart';
import 'package:flutter/material.dart';

class AppComponents {
  AppComponents._();

  static const drawerMenu = [
    {
      "title": StringConsts.appBarHome,
      "icon": Icons.home,
    },
    {
      "title": StringConsts.appBarCommunity,
      "icon": Icons.home_work,
    },
    {
      "title": StringConsts.appBarDiscovery,
      "icon": Icons.explore,
    },
    {
      "title": StringConsts.appBarComingSoon,
      "icon": Icons.timer_rounded,
    },
  ];

  static const drawerSocial = [
    {
      "title": StringConsts.appBarFriend,
      "icon": Icons.person,
    },
    {
      "title": StringConsts.appBarParties,
      "icon": Icons.people,
    },
    {
      "title": StringConsts.appBarMedia,
      "icon": Icons.camera,
    },
  ];

  static const drawerGeneral = [
    {
      "title": StringConsts.appBarSetting,
      "icon": Icons.settings,
    },
    {
      "title": StringConsts.appBarLogOut,
      "icon": Icons.logout,
    },
  ];

  static const homePageItem = ["TV Show", "Movie", "Anime/Cartoons"];

  static const maxWidth = 1440.0;
}