import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/string.dart';
import 'custom_searchBar.dart';

AppBar buildAppBar(BuildContext context, Size screenSize) {
  return AppBar(
    leading: Builder(builder: (context) {
      return IconButton(
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
        icon: const Icon(CupertinoIcons.list_bullet_indent),
      );
    }),
    title: Text(StringConsts.appTitle, style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.white)),
    actions: [
      buildSearch(screenSize),
    ],
  );
}
