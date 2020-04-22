import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

import 'package:responsive_app/potrait/global.dart';

class SlidableListTile extends StatefulWidget {
  const SlidableListTile({
    Key key,
  }) : super(key: key);

  @override
  _SlidableListTileState createState() => _SlidableListTileState();
}

class _SlidableListTileState extends State<SlidableListTile> {
  String subtitleText = '';
  @override
  Widget build(BuildContext context) {
    return Slidable(
      actionPane: SlidableDrawerActionPane(),
      actionExtentRatio: 0.25,
      child: Container(
        color: Colors.black12,
        child: ListTile(
          title: Text(
            'Olympic Soccer Ball',
            style: setTextStyle(size: GlobalCache.instance.fontSize + 3),
          ),
          subtitle: Text(
            subtitleText,
            style: setTextStyle(weight: FontWeight.bold, color: Colors.red),
          ),
          trailing: Text(
            '12\$',
            style: setTextStyle(size: GlobalCache.instance.fontSize + 3),
          ),
          leading: Container(
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '20',
                style: setTextStyle(size: GlobalCache.instance.fontSize + 3),
              ),
            ),
          ),
        ),
      ),
      secondaryActions: <Widget>[
//        IconSlideAction(
//          caption: 'Buy',
//          color: Colors.black38,
//          icon: Icons.voicemail,
//          onTap: () {
//            setState(() {
//              subtitleText = '(\$8.00 off)';
//            });
//          },
//        ),
//        IconSlideAction(
//          caption: 'Close',
//          color: Colors.yellow,
//          icon: Icons.close,
//          onTap: () {
//            setState(() {
//              subtitleText = '';
//            });
//          },
//        ),
//        IconSlideAction(
//          caption: 'Edit',
//          color: Colors.red,
//          icon: Icons.create,
//          onTap: () {
//            setState(() {
//              subtitleText = '(\$8.00 off)';
//            });
//          },
//        ),
//        IconSlideAction(
//          caption: 'Close',
//          color: Colors.yellow,
//          icon: Icons.close,
//          onTap: () {
//            setState(() {
//              subtitleText = '';
//            });
//          },
//        ),
      ],
    );
  }
}
