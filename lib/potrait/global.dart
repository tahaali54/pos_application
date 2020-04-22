import 'package:flutter/material.dart';

class GlobalCache {
  GlobalCache._privateConstructor();

    static final GlobalCache instance = GlobalCache._privateConstructor();

  double screenHeight = 900;

  double iconSize = 21;

  double leftNavBarIconSize = 31;

  double fontSize = 11;

  double smallButtonSize = 48;

  double buttonSize = 72;

  double slidableListTileSize = 58;


}

TextStyle setTextStyle(
    {color = Colors.black,
    double size,
    //family = 'Montserrat',
    weight = FontWeight.normal}) {
  if (size == null) {
    size = GlobalCache.instance.fontSize;
  }
  return TextStyle(
    fontWeight: weight,
    color: color,
    fontSize: size,
    //fontFamily: family,
  );
}
