import 'package:flutter/material.dart';

class GlobalCache {
  GlobalCache._privateConstructor();
  static final GlobalCache instance = GlobalCache._privateConstructor();

  double screenHeight = 900;

  double iconSize = 21;

  double fontSize = 11;

  double smallButtonSize = 48;

  double buttonSize = 72;

  double slidableListTileSize = 58;

  setSizes(width) {
    iconSize = (iconSize / 600) * width;
    fontSize = (fontSize / 600) * width;
    smallButtonSize = (smallButtonSize / 600) * width;
    buttonSize = (buttonSize / 600) * width;
    slidableListTileSize = (slidableListTileSize / 600) * width;
  }
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
