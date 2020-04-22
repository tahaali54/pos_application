import 'package:flutter/material.dart';
import 'package:responsive_app/landscape/home.dart';
import 'potrait/portrait_page.dart';

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
    return  OrientationBuilder(
        builder: (context, orientation) {
          return orientation == Orientation.landscape
              ? LandScapeHome()
              : PortraitPage();
        });
  }

}
