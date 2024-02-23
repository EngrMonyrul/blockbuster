import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Container buildSearch(Size screenSize) {
  return Container(
    margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
    padding: const EdgeInsets.symmetric(vertical: 4),
    width: screenSize.width * .3,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.white),
    ),
    child: const TextField(
      textAlignVertical: TextAlignVertical.top,
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
        focusedBorder: InputBorder.none,
        disabledBorder: InputBorder.none,
        enabledBorder: InputBorder.none,
        errorBorder: InputBorder.none,
        prefixIcon: Icon(CupertinoIcons.search, color: Colors.white, size: 20),
        hintStyle: TextStyle(color: Colors.white, fontSize: 15),
        hintText: "Search here!",
      ),
    ),
  );
}
