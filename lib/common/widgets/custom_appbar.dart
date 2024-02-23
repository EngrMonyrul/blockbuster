import 'package:blockbuster/common/constants/colors.dart';
import 'package:blockbuster/common/constants/images.dart';
import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar(
      {super.key,
      this.titleWidget,
      this.actionWidget,
      this.useLeading,
      this.leadingIcon,
      this.onLeadingPressed});

  final bool? useLeading;
  final Widget? titleWidget;
  final List<Widget>? actionWidget;
  final IconData? leadingIcon;
  final VoidCallback? onLeadingPressed;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return Container(
      height: screenSize.height * .2,
      decoration: const BoxDecoration(
        color: ColorConsts.bgColor,
        image: DecorationImage(
          image: AssetImage(ImagesConst.bgImg),
          fit: BoxFit.cover,
          opacity: 0.3,
        ),
      ),
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            title: titleWidget,
            centerTitle: false,
            actions: actionWidget,
            leading: useLeading!
                ? IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(Icons.arrow_back_ios_new),
                  )
                : leadingIcon != null
                    ? IconButton(
                        onPressed: onLeadingPressed, icon: Icon(leadingIcon))
                    : null,
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 200);
}
