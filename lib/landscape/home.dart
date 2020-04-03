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
    double height = (MediaQuery.of(context).size.height / 10);
    double width = (height * 2.0);

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
                    elevation: 8,
                    onPressed: () {},
                    child: Container(
//                    decoration:
//                        BoxDecoration(color: color, boxShadow: [BoxShadow()]),
                      width: width / 4 - 8,
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
                        width: width / 2 - 8,
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
    double height = (MediaQuery.of(context).size.height / 10.5);
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
                    flex: 9,
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(
                              top: (MediaQuery.of(context).size.width / 60),
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
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Column(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              color: Colors.white,
                              child: Padding(
                                padding:
                                    const EdgeInsets.only(top: 8.0, bottom: 8),
                                child: Column(
                                  children: <Widget>[
                                    Expanded(
                                      child: Column(
                                        children: <Widget>[
                                          GestureDetector(
                                            //First Tile
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile1 = true;
                                                showCartOptions = true;
                                              });
                                            },
                                            onTap: () {
                                              setState(() {
                                                tile1 = false;
                                                showCartOptions = false;
                                              });
                                            },
                                            child: _buildListTile(
                                                        context,
                                                        '20',
                                                        'Olympic Soccer Ball',
                                                        '\$12',
                                                        size,
                                                        1,
                                                        '(\$8.00 off)')

                                          ),
                                          GestureDetector(
                                            //Second Tile
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile2 = true;
                                              });
                                            },
                                            onTap: () {
                                              setState(() {
                                                tile2 = false;
                                              });
                                            },

                                            child: tile2 == true
                                                ? _buildListTileLong(
                                                    context,
                                                    '10',
                                                    'Phone Battery 10',
                                                    size,
                                                    2)
                                                : option2 == true
                                                    ? _buildListTile(
                                                        context,
                                                        '10',
                                                        'Phone Battery 10',
                                                        '\$12',
                                                        size,
                                                        2,
                                                        '(\$8.00 off)')
                                                    : _buildListTile(
                                                        context,
                                                        '10',
                                                        'Phone Battery 10',
                                                        '\$12',
                                                        size,
                                                        2,
                                                        ''),
                                          ),
                                          GestureDetector(
                                            //Third tile
                                            onLongPress: () {
                                              print('long pressed');
                                              setState(() {
                                                tile3 = true;
                                              });
                                            },
                                            onTap: () {
                                              setState(() {
                                                tile3 = false;
                                              });
                                            },
                                            onPanEnd: (_) {
                                              print('Pan End');
                                            },
                                            onPanStart: (details) {
                                              print('Pan Started: $details');
                                            },
                                            onLongPressUp: () {
                                              print('Long press up ');
                                            },
                                            child: tile3 == true
                                                ? _buildListTileLong(
                                                    context,
                                                    '12',
                                                    'Phone Battery 10',
                                                    size,
                                                    3)
                                                : option3 == true
                                                    ? _buildListTile(
                                                        context,
                                                        '12',
                                                        'Phone Battery 10',
                                                        '\$12',
                                                        size,
                                                        3,
                                                        '(\$8.00 off)')
                                                    : _buildListTile(
                                                        context,
                                                        '12',
                                                        'Phone Battery 10',
                                                        '\$12',
                                                        size,
                                                        3,
                                                        ''),
                                          )
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
                                top: 16.0, bottom: 12.0, right: 10.0),
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
      showCartOptions = false;

  _buildListTile(
      BuildContext context, leading, title, trailing, size, index, end) {
    return Card(
      color: Colors.white70,
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: GestureDetector(
          onLongPress: () {
            _listShowHideOptions();
          },
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        color: Colors.white,
                        height: (size * 3) + 0,
                        width: (size * 5),
                        child: Padding(
                          padding: EdgeInsets.only(top: size - 2),
                          child: Text(
                            "12",
                            style: TextStyle(fontSize: size + 2),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),

                    Column(
                      children: <Widget>[
                        Container(
                            padding: EdgeInsets.only(top: 3),
                            child: Text(
                              title,
                              style: TextStyle(fontSize: size),
                            )),
                        Container(
                            child: Text(
                          title,
                          style: TextStyle(
                              fontSize: size, color: Colors.cyan.shade800),
                        ))
                      ],
                    ),
                    showCartOptions?Visibility(
                      child: Row(
                        children: _listShowHideOptions(),
                      ),

                    ):Container(width: 100,)

//
//                    child: Row(
//                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                      children:
//                      _buildMiddleColumRowWhite(context, "Middle"),
//                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );

  }

  List<Widget> _listShowHideOptions() {
    List<Widget> boxes = List();
    List<Color> colors = [Colors.red, Colors.amber, Colors.pink, Colors.greenAccent];
    List<IconData> iconList = [Icons.edit,Icons.report,Icons.school,Icons.mobile_screen_share];
    //double height = (MediaQuery.of(context).size.height / 10);
    //double width = (height * 2.2);
    var tile = 4;
    var buttonSize = 5.0;
    var iconSize = 5.0;

    for (int i = 0; i < 4; i++) {
      boxes.add(InkWell(
        child: Card(
          margin: const EdgeInsets.only(left: 4),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0)),
          color: colors[i],
          child: Container(
            height: 25,
            width: 25,
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

    Row(
      children: <Widget>[
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
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
    );
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
                    if (tile == 1) option1 = true;
                    if (tile == 2) option2 = true;
                    if (tile == 3) option3 = true;
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
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: InkWell(
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
              height: height / 1.2,
              width: height * 1.2,
            ),
          ),
        ),
      ),
    );
  }
}
