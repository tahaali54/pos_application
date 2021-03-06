import 'dart:ffi';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'task_bar.dart';
import 'left_column.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LandScapeHome extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<LandScapeHome> {
  void showShortToast(String title) {
    Fluttertoast.showToast(
        msg: "$title button is pressed",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1);
  }

  double spaceBetween = 8;

  _buildFirstColumnRowGrey(BuildContext context, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.5);
    return Padding(
      padding: EdgeInsets.only(right: spaceBetween, left: spaceBetween),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: InkWell(
          child: Card(
            child: RawMaterialButton(
              fillColor: Colors.grey,
              elevation: 6,
              onPressed: () {},
              child: Container(
                  width: width,
                  height: height,
                  child: Center(
                      child: Text(
                        title,
                        style: TextStyle(color: Colors.white, fontSize: size),
                      ))),
            ),

//
          ),
        ),
      ),
    );
  }

  _buildMiddleColumRowYellow(
      BuildContext context, Color color, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.3);
    return Padding(
      padding: EdgeInsets.only(right: spaceBetween - 3, left: spaceBetween - 3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: InkWell(
          child: Card(
            child: RawMaterialButton(
              fillColor: color,
              elevation: 16,
              onPressed: () {},
              child: Container(
                  width: width,
                  height: height,
                  child: Center(
                      child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: size + 2),
                  ))),
            ),

//
          ),
        ),
      ),
    );
  }

  List<Widget> _buildMiddleColumRowWhite(BuildContext context, String title) {
    List<Widget> boxes = List();
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.2);
    for (int i = 0; i < 5; i++) {
      boxes.add(Padding(
        padding: EdgeInsets.only(right: spaceBetween, left: spaceBetween),
        child: InkWell(
          child: Card(
              child: RawMaterialButton(
            fillColor: Colors.white,
            elevation: 8,
            onPressed: () {},
            child: Container(
              width: width,
              height: height,
            ),
          )),
        ),
      ));
    }
    return boxes;
  }

  _buildBottomColumnYellow(
      BuildContext context, Color color, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.5);
    return Padding(
      padding: EdgeInsets.only(right: spaceBetween, left: spaceBetween),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(23),
        child: InkWell(
          child: Card(
            child: RawMaterialButton(
              fillColor: color,
              elevation: 16,
              onPressed: () {},
              child: Container(
                  width: width,
                  height: height,
                  child: Center(
                      child: Text(
                    title,
                    style: TextStyle(color: Colors.white, fontSize: size + 2),
                  ))),
            ),
          ),
        ),
      ),
    );
  }

  _buildBottomColumnRowRed(BuildContext context, size, color) {
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.2);
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 16,
      child: Container(
//        width: width,

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: InkWell(
                child: RawMaterialButton(
                  fillColor: color,
                  elevation: 8,
                  onPressed: () {},
                  child: Container(
//
                    width: width / 2 - 4,
                    height: height,
                    child: Icon(
                      Icons.arrow_back_ios,
                      size: size * 2,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  onTap: () {
                    showShortToast("Right Arrow");
                  },
                  child: RawMaterialButton(
                    fillColor: color,
                    elevation: 8,
                    onPressed: () {},
                    child: Container(
                      width: width / 2 - 4,
                      height: height,
                      child: Icon(
                        Icons.arrow_forward_ios,
                        size: size * 2,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _buildBottomColumRowWhiteSlim(
      BuildContext context, Color tileColor, String title, size) {
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.2);

    // margin:const EdgeInsets.only(top: 26)
    return Padding(
      padding: EdgeInsets.only(right: spaceBetween, left: spaceBetween),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: InkWell(
          child: Card(
            child: RawMaterialButton(
              fillColor: tileColor,
              elevation: 8,
              onPressed: () {},
              child: Container(
                width: width,
                height: height,
                child: Center(
                    child: Text(
                  title,
                  style: TextStyle(fontSize: size),
                )),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _buildRightMiddleColumYellow(BuildContext context, size, color) {
    double height = (MediaQuery.of(context).size.height / 11);
    double width = (height * 2.5);
    return Card(
      color: Colors.transparent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 16,
      child: Container(
        width: width,
        height: height,
        child: FittedBox(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: InkWell(
                  child: RawMaterialButton(
                    fillColor: color,
                    elevation: 4,
                    onPressed: () {},
                    child: Container(
//                    decoration:
//                        BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                      width: width / 1.5,
                      height: height,
                      child: Icon(
                        Icons.arrow_back_ios,
                        size: size * 2.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: InkWell(
                    child: RawMaterialButton(
                      fillColor: color,
                      elevation: 4,
                      onPressed: () {},
                      child: Container(
//                    decoration:
//                        BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                        width: width / 1.5,
                        height: height,
                        child: Icon(
                          Icons.arrow_forward_ios,
                          size: size * 2.5,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
//    SystemChrome.setPreferredOrientations([
//      DeviceOrientation.landscapeRight,
//      DeviceOrientation.landscapeLeft,
//    ]);
    double size = (1 / 100) * (MediaQuery.of(context).size.width);
    double height = (MediaQuery.of(context).size.height / 10);
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
                height: MediaQuery.of(context).size.height / 14,
                color: Colors.white,
                child: TaskBar(size)), //TaskBar//_buildTaskbar(size)
            //Row with 3 columns
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  //Left Column
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: LeftColumn(),
                      )),

                  // Middle Column
                  Expanded(
                    flex: 10,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: 0,
                              bottom: (MediaQuery.of(context).size.width / 70)),
                          child: FittedBox(
                            fit: BoxFit.contain,
                            alignment: Alignment.center,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _buildFirstColumnRowGrey(
                                    context, 'STORE', size),
                                _buildFirstColumnRowGrey(
                                    context, 'PRODUCT', size),
                                _buildFirstColumnRowGrey(
                                    context, 'TABLE', size),
                                _buildFirstColumnRowGrey(
                                    context, 'COMMANDE', size),
                                _buildFirstColumnRowGrey(
                                    context, 'PAIEMENT', size),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 8),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _buildMiddleColumRowYellow(
                                    context, Colors.amber, 'SANDWICH', size),
                                _buildMiddleColumRowYellow(
                                    context, Colors.amber, 'TACOS', size),
                                _buildMiddleColumRowYellow(
                                    context, Colors.amber, 'TEX MEX', size),
                                _buildMiddleColumRowYellow(
                                    context, Colors.amber, 'HAMBURGER', size),
                                _buildMiddleColumRowYellow(
                                    context, Colors.amber, 'DESERT', size),
                                _buildMiddleColumRowYellow(
                                    context, Colors.red, '< BACK', size),
                              ],
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:
                                _buildMiddleColumRowWhite(context, "Middle"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  _buildMiddleColumRowWhite(context, "Middle"),
                            ),
                          ),
                        ),
                        FittedBox(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children:
                                _buildMiddleColumRowWhite(context, "Middle"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 8),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children:
                                  _buildMiddleColumRowWhite(context, "Middle"),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.only(bottom: 10, top: 4),
                          child: FittedBox(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                _buildBottomColumnYellow(
                                    context, Colors.amber, 'SUR PLACE', size),
                                _buildBottomColumnYellow(
                                    context, Colors.amber, 'EMPORTER', size),
                                _buildBottomColumnYellow(
                                    context, Colors.amber, 'LIVRAISON', size),
                                _buildBottomColumnYellow(
                                    context, Colors.amber, 'SUR PLACE', size),
//                              _buildMiddleColumYellow(context, Colors.amber, 'SUR PLACE',size),

                                _buildBottomColumnRowRed(
                                    context, size, Colors.red)
                              ],
                            ),
                          ),
                        ),
//                        Expanded(child: Container()),
                        FittedBox(
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                _buildBottomColumRowWhiteSlim(
                                    context, Colors.white, "TIME", size),
                                _buildBottomColumRowWhiteSlim(
                                    context, Colors.white, "BUTTON", size),
                                _buildBottomColumRowWhiteSlim(
                                    context, Colors.white, "CREDIT", size),
                                _buildBottomColumRowWhiteSlim(
                                    context, Colors.white, "EXCHANGE", size),
                                _buildBottomColumRowWhiteSlim(
                                    context, Colors.white, "CUSTOMER", size),
                              ]),
                        ),
                      ],
                    ),
                  ),

                  Expanded(
                    flex: 6,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding: const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          Expanded(
                                              child: _getListView(
                                                  context,
                                                  '20',
                                                  'Olympic Soccer Ball',
                                                  'super produit additional 54',
                                                  '\$12',
                                                  size,
                                                  1,
                                                  '(\$8.00 off)')),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            children: <Widget>[
                                              _buildRightMiddleColumYellow(
                                                  context, size, Colors.amber),
                                            ],
                                          ),
                                        ),
                                        buildListTileBottom(size)
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 16.0, bottom: 12.0),
                            child: FittedBox(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  _buildAddButtonRow(
                                      (MediaQuery.of(context).size.height / 35),
                                      height,
                                      '%',
                                      Colors.blueGrey.shade400),
                                  _buildAddButtonRow(
                                      size, height, 'PARK', Colors.blue),
                                  _buildAddButtonRow(
                                      size, height, 'CANCEL', Colors.red),
                                  _buildAddButtonRow(
                                      size,
                                      height,
                                      'VALIDER ENCAISSER',
                                      Colors.cyan.shade800),
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Color myColor = Colors.lightBlueAccent;

  bool tile1 = false,
      tile2 = false,
      tile3 = false,
      option1 = false,
      option2 = false,
      option3 = false,

      cartItem1 = false,
      cartItem1Price = false,
      cartItem2Price = false,
      cartItem3Price = false,
      cartItem2 = false,
      cartItem3 = false,
      showCartOptionsItem1 = false,
      showCartDescItem1 = true,
      showCartOptionsItem2 = false,
      showCartDescItem2 = true,
      showCartOptionsItem3 = false,
      showCartDescItem3 = true;

  _getListView(
      BuildContext context, leading, title, desc, trailing, size, index, end) {
    //option1 == true -> make showCartOptionsItem1 ==false & showCartDescItem1 ==true
    return Container(
      child: ListView(
        children: <Widget>[
          //1
          GestureDetector(
            onTap: () {
              showShortToast("1st tap");
              showCartOptionsItem1 = false;
              showCartDescItem1 = true;
              cartItem1Price = false;
              cartItem1 = false;
              setState(() {});
            },
            onLongPress: () {
              showShortToast("1st long");
              showCartOptionsItem1 = true;
              showCartDescItem1 = false;
              cartItem1Price = false;
              cartItem1 = true;
              setState(() {});
            },
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: (size * 4) + 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      true
                          ? Visibility(
                              child: Align(
                                  alignment: Alignment.topRight,
                                  child: Text(
                                    "\$24  ",
                                    style: TextStyle(fontSize: size),
                                  )),
                            )
                          : Container(),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            height: (size * 3) + 0,
                            width: (size * 4) + 3,
                            child: Padding(
                              padding: EdgeInsets.only(top: size - 2),
                              child: Text(
                                "12",
                                style: TextStyle(fontSize: size + 2),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  title,
                                  style: TextStyle(fontSize: size),
                                )),
                                showCartDescItem1
                                    ? Visibility(
                                        child: Container(
                                            child: Text(
                                          desc,
                                          style: TextStyle(
                                              fontSize: size ,
                                              color: Colors.cyan.shade800),
                                        )),
                                )
                                    : Container()
                              ],
                            ),
                          ),
                          showCartOptionsItem1
                              ? Visibility(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem1Price?Visibility(
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(child: Text(
                                    "(\$8.00 off)",
                                    style: TextStyle(
                                        fontSize: size - 1,
                                        color: Colors.red),
                                  ),),
                                ),
                              ),
                            ),
                          ):Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          //2
          GestureDetector(
            onTap: () {
              showShortToast("2st tap");
              showCartOptionsItem2 = false;
              showCartDescItem2 = true;
              cartItem2Price = false;
              cartItem2 = false;
              setState(() {});
            },
            onLongPress: () {
              showShortToast("2st long");
              showCartOptionsItem2 = true;
              showCartDescItem2 = false;
              cartItem2Price = false;
              cartItem2 = true;
              setState(() {});
            },
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: (size * 4) + 10,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "\$24  ",
                            style: TextStyle(fontSize: size),
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            height: (size * 3) + 0,
                            width: (size * 4) + 3,
                            child: Padding(
                              padding: EdgeInsets.only(top: size - 2),
                              child: Text(
                                "12",
                                style: TextStyle(fontSize: size + 2),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  title,
                                  style: TextStyle(fontSize: size),
                                )),
                                showCartDescItem2
                                    ? Visibility(
                                        child: Container(
                                            child: Text(
                                          desc,
                                          style: TextStyle(
                                              fontSize: size,
                                              color: Colors.cyan.shade800),
                                        )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          showCartOptionsItem2
                              ? Visibility(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem2Price?Visibility(
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(child: Text(
                                    "(\$8.00 off)",
                                    style: TextStyle(
                                        fontSize: size - 1,
                                        color: Colors.red),
                                  ),),
                                ),
                              ),
                            ),
                          ):Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

//3
          GestureDetector(
            onTap: () {
              showShortToast("3st tap");
              showCartOptionsItem3 = false;
              showCartDescItem3 = true;
              cartItem3Price = false;
              cartItem3 = false;
              setState(() {});
            },
            onLongPress: () {
              showShortToast("3st long");
              showCartOptionsItem3 = true;
              showCartDescItem3 = false;
              cartItem3Price = false;
              cartItem3 = true;
              setState(() {});
            },
            child: Card(
              color: Colors.white70,
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Container(
                  height: (size * 4) + 10,
                  child: Column(
                    children: <Widget>[
                      Align(
                          alignment: Alignment.topRight,
                          child: Text(
                            "\$24  ",
                            style: TextStyle(fontSize: size),
                          )),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            color: Colors.white,
                            height: (size * 3) + 0,
                            width: (size * 4) + 3,
                            child: Padding(
                              padding: EdgeInsets.only(top: size - 2),
                              child: Text(
                                "12",
                                style: TextStyle(fontSize: size + 2),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 3, left: 5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                    child: Text(
                                  title,
                                  style: TextStyle(fontSize: size),
                                )),
                                showCartDescItem3
                                    ? Visibility(
                                        child: Container(
                                            child: Text(
                                          desc,
                                          style: TextStyle(
                                              fontSize: size,
                                              color: Colors.cyan.shade800),
                                        )),
                                      )
                                    : Container()
                              ],
                            ),
                          ),
                          showCartOptionsItem3
                              ? Visibility(
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.only(left: 20, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem3Price?Visibility(
                            child: Expanded(
                              child: Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: const EdgeInsets.only(top: 15),
                                  child: Container(child: Text(
                                    "(\$8.00 off)",
                                    style: TextStyle(
                                        fontSize: size - 1,
                                        color: Colors.red),
                                  ),),
                                ),
                              ),
                            ),
                          ):Container()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    //  return listView;
  }

  List<Widget> _listShowHideOptions() {
    List<Widget> boxes = List();
    List<Color> colors = [
      Colors.cyan.shade800,
      Colors.grey,
      Colors.amber,
      Colors.red
    ];
    List<IconData> iconList = [
      Icons.person_outline,
      Icons.linear_scale,
      Icons.close,
      Icons.edit
    ];
    double height = (MediaQuery.of(context).size.height / 20);
    double width = (height);
    var tile = 4;
    var buttonSize = 5.0;
    var iconSize = 5.0;

    for (int i = 0; i < 4; i++) {
      boxes.add(InkWell(
        child: Card(
          margin: const EdgeInsets.only(left: 8),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0)),
          color: colors[i],
          child: Container(
            height: height,
            width: width,
            child: FittedBox(
              child: IconButton(
                onPressed: () {
                  _showDialog(context, tile);
                  if (tile1 == true) {
                    setState(() {
                      tile1 = false;
                    });
                  } else if (tile2 == true) {
                    setState(() {
                      tile2 = false;
                    });
                  } else {
                    setState(() {
                      tile3 = false;
                    });
                  }
                },
                // iconSize: buttonSize,

                icon: Icon(
                  //     Icons.edit,
                  iconList[i],
                  color: Colors.white,
                  // size: iconSize,
                ),
              ),
            ),
          ),
        ),
      ));
    }
    return boxes;
  }

  _buildListTileLong(BuildContext context, leading, title, size, tile) {
    double buttonSize = (MediaQuery.of(context).size.height / 26);
    double iconSize = (MediaQuery.of(context).size.height / 30);
    return Card(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        //GREY CELL PADDING WHEN LONG PRESSED
        child: ListTile(
          contentPadding: EdgeInsets.all(0),
          leading: Padding(
            padding: const EdgeInsets.all(4.0),
            child: InkWell(
              child: GestureDetector(
                child: Container(
                    color: Colors.white,
                    width: size + 35,
                    height: size + 30,
                    alignment: Alignment.center,
                    child: Text(leading, style: TextStyle(fontSize: size))),
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: size),
              ),
              Row(
                children: <Widget>[
                  Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.cyan.shade800,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context, tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      iconSize: buttonSize,
                      icon: Icon(
                        Icons.person_outline,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(left: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.grey,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context, tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      iconSize: buttonSize,
                      icon: Icon(
                        Icons.linear_scale,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(left: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.amber,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context, tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      iconSize: buttonSize,
                      icon: Icon(
                        Icons.close,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                  ),
                  Card(
                    margin: const EdgeInsets.only(left: 16),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.red,
                    child: IconButton(
                      onPressed: () {
                        _showDialog(context, tile);
                        if (tile1 == true) {
                          setState(() {
                            tile1 = false;
                          });
                        } else if (tile2 == true) {
                          setState(() {
                            tile2 = false;
                          });
                        } else {
                          setState(() {
                            tile3 = false;
                          });
                        }
                      },
                      iconSize: buttonSize,
                      icon: Icon(
                        Icons.edit,
                        color: Colors.white,
                        size: iconSize,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  _showDialog(BuildContext context, tile) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            content: Container(
              width: MediaQuery.of(context).size.width / 4,
              height: MediaQuery.of(context).size.height / 3,
              color: Colors.white,
            ),
            actions: <Widget>[
              FlatButton(
                onPressed: () {
                  setState(() {
                    if (cartItem1) {
                      cartItem1 = false;
                      cartItem1Price = true;
                      showCartOptionsItem1 = false;
                      showCartDescItem1 = true;
                    }
                    if (cartItem2) {
                      cartItem2 = false;
                      cartItem2Price = true;
                      showCartOptionsItem2 = false;
                      showCartDescItem2 = true;
                    }
                    if (cartItem3) {
                      cartItem3 = false;
                      cartItem3Price = true;
                      showCartOptionsItem3 = false;
                      showCartDescItem3 = true;
                    }
                    print(tile);
                    Navigator.pop(context);
                  });
                },
                child: Text('Ok'),
              )
            ],
          );
        });
  }

  buildListTileBottom(size) {
    return Card(
      color: Colors.grey[400],
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Container(
          height: size * 3,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "     Total =",
                style: TextStyle(fontSize: size + 2),
              ),
              Text("\$24  ")
            ],
          ),
        ),
      ),
    );
  }

  _buildAddButtonRow(size, height, title, color) {
    double height = (MediaQuery.of(context).size.height / 11);
    double width = (height * 2.5);

    return ClipRRect(
      borderRadius: BorderRadius.circular(23.0),
      child: Card(
        child: RawMaterialButton(
          fillColor: color,
          elevation: 16,
          onPressed: () {},
          child: Container(
//            color: color,
            child: Center(
                child: Text(
              '$title',
              style: TextStyle(fontSize: size, color: Colors.white),
              textAlign: TextAlign.center,
            )),
            height: height ,
            width: width/1.5,
          ),
        ),
      ),
    );
  }
}
