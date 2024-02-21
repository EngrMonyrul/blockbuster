import 'package:blockbuster/common/components/app_components.dart';
import 'package:blockbuster/core/providers/appbar_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../utils/constants/colors_const.dart';
import '../../utils/constants/image_const.dart';
import '../../utils/constants/strings_const.dart';
import 'appbar_item.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key, required this.appBarSection});

  final Widget appBarSection;

  @override
  Widget build(BuildContext context) {

    /*------------> Variables <-----------*/
    final screenSize = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;
    final appbarProvider = Provider.of<AppbarProvider>(context);

    /*-------------> Scaffold Screen <--------------*/
    return CustomScrollView(
      slivers: <Widget>[
        /*---------------> Appbar <----------------*/
        SliverAppBar(
          backgroundColor: AppColorsConst.baseColor,
          expandedHeight: screenSize.height,
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              children: [
                /*----------------> App Title & Subtitle <--------------*/
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(AppStringsConst.appTitle,
                        style: textTheme.headlineLarge),
                    Text(AppStringsConst.appSubTitle,
                        style: textTheme.titleLarge),
                  ],
                ),
                const SizedBox(width: 30),

                /*-----------------> Appbar Items <-----------------*/
                SizedBox(
                  height: screenSize.height * .1,
                  width: 600,
                  child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: AppComponents.appBarScreens.length,
                    itemBuilder: (context, index) {
                      final item = AppComponents.appBarScreens[index];
                      return AppbarItem(item: item);
                    },
                  ),
                ),

                /*--------------> Appbar User Section <----------------*/
                /*Expanded(
                  child: ListView.builder(
                    itemCount: ,
                  ),
                ),*/
              ],
            ),
          ),

          /*---------------> Appbar Background Image <---------------*/
          flexibleSpace: FlexibleSpaceBar(
            background: Opacity(
                opacity: 0.2,
                child: Image.asset(AppImageConst.bgImg, fit: BoxFit.cover)),

          ),
        ),
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return appBarSection;
            },
          ),
        )
      ],
    );
  }
}
