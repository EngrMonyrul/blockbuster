import 'package:blockbuster/utils/constants/colors_const.dart';
import 'package:blockbuster/utils/constants/image_const.dart';
import 'package:blockbuster/utils/constants/strings_const.dart';
import 'package:flutter/material.dart';

import '../../../common/widgets/custom_appbar.dart';

class LaptHomeScreenView extends StatefulWidget {
  const LaptHomeScreenView({super.key});

  @override
  State<LaptHomeScreenView> createState() => _LaptHomeScreenViewState();
}

class _LaptHomeScreenViewState extends State<LaptHomeScreenView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomAppbar(appBarSection: SizedBox()),
    );
  }
}
