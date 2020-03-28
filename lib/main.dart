import 'package:flutter/material.dart';
import 'package:responsive_app/global.dart';

import 'portrait_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pos App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < constraints.maxHeight) {
        GlobalCache.instance.setSizes(constraints.maxWidth);
        //GlobalCache.instance.screenHeight = constraints.maxHeight;
        return PortraitPage();
      } else {
        return Container(child: Text('Landscape'));
      }
    });
  }
}
