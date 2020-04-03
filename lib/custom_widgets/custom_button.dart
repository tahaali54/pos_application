import 'package:flutter/material.dart';

import '../global.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.text,
    this.color = Colors.orange,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: GlobalCache.instance.buttonSize + 4,
        minHeight: (GlobalCache.instance.buttonSize / 2) + 8,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      fillColor: color,
      elevation: 0,
      child: Text(
        text,
        style: setTextStyle(
            color: Colors.white,
            weight: FontWeight.bold,
            size: text == "<<" || text == ">>"
                ? GlobalCache.instance.fontSize + 9
                : GlobalCache.instance.fontSize),
      ),
      onPressed: () {},
    );
  }
}
