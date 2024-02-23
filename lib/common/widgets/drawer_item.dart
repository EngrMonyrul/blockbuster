import 'package:flutter/material.dart';

import '../../src/providers/home_screen_provider.dart';
import '../constants/colors.dart';
import '../constants/components.dart';
import '../constants/string.dart';

Container drawerItem(BuildContext context, HomeScreenProvider value) {
  return Container(
    color: ColorConsts.bgColor,
    padding: const EdgeInsets.symmetric(vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
            child: FittedBox(
          child: Text(StringConsts.appTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge
                  ?.copyWith(color: Colors.white)),
        )),
        Center(
            child: Text(StringConsts.appSubTitle,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall
                    ?.copyWith(color: Colors.white))),
        const SizedBox(height: 50),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(StringConsts.appBarMenu,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white)),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: AppComponents.drawerMenu.length,
            itemBuilder: (context, index) {
              final item = AppComponents.drawerMenu[index];
              return InkWell(
                onTap: () {
                  value.setIndex(value: index);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color: value.selectedIndex == index ? Colors.black12 : null,
                    border: value.selectedIndex == index
                        ? const Border(
                            right: BorderSide(color: Colors.red, width: 5))
                        : null,
                  ),
                  child: Row(
                    children: [
                      Icon(item["icon"] as IconData?,
                          color: value.selectedIndex == index
                              ? Colors.red
                              : Colors.white),
                      const SizedBox(width: 10),
                      Text(item["title"].toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: value.selectedIndex == index
                                      ? Colors.red
                                      : Colors.white,
                                  fontWeight: value.selectedIndex == index
                                      ? FontWeight.bold
                                      : null)),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(StringConsts.appBarSocial,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white)),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: AppComponents.drawerSocial.length,
            itemBuilder: (context, index) {
              final item = AppComponents.drawerSocial[index];
              return InkWell(
                onTap: () {
                  value.setSelectedSocial(value: index);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color:
                        value.selectedSocial == index ? Colors.black12 : null,
                    border: value.selectedSocial == index
                        ? const Border(
                            right: BorderSide(color: Colors.red, width: 5))
                        : null,
                  ),
                  child: Row(
                    children: [
                      Icon(item["icon"] as IconData?,
                          color: value.selectedSocial == index
                              ? Colors.red
                              : Colors.white),
                      const SizedBox(width: 10),
                      Text(item["title"].toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: value.selectedSocial == index
                                      ? Colors.red
                                      : Colors.white,
                                  fontWeight: value.selectedSocial == index
                                      ? FontWeight.bold
                                      : null)),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(StringConsts.appBarGeneral,
              style: Theme.of(context)
                  .textTheme
                  .bodyLarge
                  ?.copyWith(color: Colors.white)),
        ),
        const SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: AppComponents.drawerGeneral.length,
            itemBuilder: (context, index) {
              final item = AppComponents.drawerGeneral[index];
              return InkWell(
                onTap: () {
                  value.setGeneral(value: index);
                },
                child: Container(
                  padding: const EdgeInsets.only(top: 10, left: 20, bottom: 10),
                  decoration: BoxDecoration(
                    color:
                        value.selectedGeneral == index ? Colors.black12 : null,
                    border: value.selectedGeneral == index
                        ? const Border(
                            right: BorderSide(color: Colors.red, width: 5))
                        : null,
                  ),
                  child: Row(
                    children: [
                      Icon(item["icon"] as IconData?,
                          color: value.selectedGeneral == index
                              ? Colors.red
                              : Colors.white),
                      const SizedBox(width: 10),
                      Text(item["title"].toString(),
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium
                              ?.copyWith(
                                  color: value.selectedGeneral == index
                                      ? Colors.red
                                      : Colors.white,
                                  fontWeight: value.selectedGeneral == index
                                      ? FontWeight.bold
                                      : null)),
                      const Spacer(),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    ),
  );
}
