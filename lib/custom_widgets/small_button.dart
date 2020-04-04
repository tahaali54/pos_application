import 'package:flutter/material.dart';

import '../global.dart';

class SmallButtonWithText extends StatelessWidget {
  const SmallButtonWithText({
    Key key,
    @required this.text,
    this.color = Colors.black,
  }) : super(key: key);

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: RawMaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: color),
          borderRadius: BorderRadius.circular(8.0),
        ),
        constraints: BoxConstraints(
          minWidth: GlobalCache.instance.smallButtonSize,
          minHeight: (GlobalCache.instance.smallButtonSize / 2) + 4,
        ),
        child: Text(
          text,
          style: setTextStyle(
              size: GlobalCache.instance.fontSize, color: color),
        ),
      ),
    );
  }
}

class SmallButtonWithIcon extends StatelessWidget {
  const SmallButtonWithIcon({
    Key key,
    @required this.icon,
    this.color = Colors.black,
  }) : super(key: key);

  final IconData icon;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: RawMaterialButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 2, color: color),
          borderRadius: BorderRadius.circular(8.0),
        ),
        constraints: BoxConstraints(
          minWidth: GlobalCache.instance.smallButtonSize,
          minHeight: (GlobalCache.instance.smallButtonSize / 2) + 4,
        ),
        child: Icon(
          icon,
          color: color,
          size: GlobalCache.instance.iconSize,
        ),
      ),
    );
  }
}
