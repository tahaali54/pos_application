import 'package:flutter/material.dart';
import 'package:responsive_app/potrait/global.dart';


class CustomButton extends StatelessWidget {
  const CustomButton({
    Key key,
    @required this.text,
    this.color = Colors.amber,
  }) : super(key: key);

  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(
        minWidth: GlobalCache.instance.buttonSize + 10,
        minHeight: (GlobalCache.instance.buttonSize / 2) + 4,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      fillColor: color,
      elevation: 8,

      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          if (text !="<<" && text!=">>" && text!=">"&& text!="<") Visibility(
            child: Text(
              text,
              style: setTextStyle(
                  color: Colors.white,
                  weight: FontWeight.bold,
                  size: text == "<<" || text == ">>"
                      ? GlobalCache.instance.fontSize + 9
                      : GlobalCache.instance.fontSize),
            ),
          ) else if (text =="<<" )
            Icon(Icons.arrow_back_ios,color: Colors.white,size: GlobalCache.instance.iconSize)
          else if (text==">>")
            Icon(Icons.arrow_forward_ios,color: Colors.white,size: GlobalCache.instance.iconSize)
            else if (text=="<")
                Icon(Icons.arrow_back_ios,color: Colors.white,size: GlobalCache.instance.iconSize-5)
              else if (text==">")
                  Icon(Icons.arrow_forward_ios,color: Colors.white,size: GlobalCache.instance.iconSize-5,)
        ],
      ),

      onPressed: () {},
    );
  }
}
