import 'package:flutter/material.dart';

class AppbarItem extends StatelessWidget {
  const AppbarItem({super.key,required this.item});

  final String item;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(item),
          const Icon(Icons.keyboard_arrow_down_rounded),
        ],
      ),
    );
  }
}
