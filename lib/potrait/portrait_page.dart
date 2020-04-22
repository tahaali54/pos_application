import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:responsive_app/potrait/global.dart';
import 'custom_widgets/custom_button.dart';
import 'custom_widgets/small_button.dart';

class PortraitPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<PortraitPage> {
  void showShortToast(String title) {
    Fluttertoast.showToast(
        msg: "$title button is pressed",
        toastLength: Toast.LENGTH_SHORT,
        timeInSecForIosWeb: 1);
  }

  List<Widget> _buildNavbar() {
    List<IconData> icons = [
      Icons.dashboard,
      Icons.table_chart,
      Icons.crop_free,
      Icons.brush,
      Icons.stars,
      Icons.extension,
      Icons.category,
      Icons.format_align_center,
      Icons.web,
      Icons.more_horiz,
    ];

    List<Widget> navbarItems = List();

    navbarItems.add(
      Padding(
        padding: const EdgeInsets.only(bottom: 16),
        child: IconButton(
          iconSize: GlobalCache.instance.leftNavBarIconSize,
          icon: Icon(Icons.menu),
          color: Colors.grey.shade700,
          onPressed: () {},
        ),
      ),
    );

    icons.forEach(
      (item) => navbarItems.add(
        Expanded(
          child: IconButton(
            iconSize: GlobalCache.instance.leftNavBarIconSize,
            icon: Icon(item),
            color: Colors.grey.shade700,
            onPressed: () {},
          ),
        ),
      ),
    );

    navbarItems.add(
      Expanded(
        flex: 4,
        child: Container(),
      ),
    );
    return navbarItems;
  }

  List<Widget> _buildPortraitViewLayout(context) {
    List<Widget> viewItems = List();
    _buildSmallButtonsRow(viewItems);
    _buildGreyButtonsRow(viewItems);
    _build3rdRow(viewItems);
    viewItems.add(
      Container(
        //Center White Buttons
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.width / 7) * 3.5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[
              WhiteBoxRow(),
              WhiteBoxRow(),
              WhiteBoxRow(),
              WhiteBoxRow(),
            ],
          ),
        ),
      ),
    );
    _build5thRow(viewItems);
    _buildRowWithListView(viewItems);
    _buildWhiteButtonsRow(viewItems);

    return viewItems;
  }

  void _buildWhiteButtonsRow(List<Widget> viewItems) {
    List<Widget> buttons = List();
    for (int i = 0; i < 5; i++) {
      buttons.add(
        SizedBox(
          width: GlobalCache.instance.buttonSize + 21,
          height: (GlobalCache.instance.buttonSize / 2) + 8,
          child: RaisedButton(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8.0),
            ),
            color: Colors.white,
            child: Text(
              'BUTTON',
              style:
                  setTextStyle(weight: FontWeight.bold, color: Colors.black38),
            ),
          ),
        ),
      );
    }
    return viewItems.add(
      Expanded(
        child: Container(
          child: Padding(
            padding:
                const EdgeInsets.only(left: 8, right: 8, top: 3, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buttons,
            ),
          ),
        ),
      ),
    );
  }

  void _buildRowWithListView(List<Widget> viewItems) {
    double size = (1 / 70) * (MediaQuery.of(context).size.width);
    return viewItems.add(
      Expanded(
        flex: 6,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 8,
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Material(
                        elevation: 2,
                        child: Expanded(
                          child: Container(
                            color: Colors.white,
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 0.0, bottom: 0),
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
                                              size + 2,
                                              1,
                                              '(\$8.00 off)'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 8, bottom: 4),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: <Widget>[
                                        SizedBox(
                                          width: GlobalCache
                                              .instance.smallButtonSize,
                                          height: GlobalCache
                                                  .instance.smallButtonSize /
                                              1.5,
                                          child: CustomButton(
                                            text: '<',
                                            color: Colors.amber,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 8.0),
                                          child: SizedBox(
                                            width: GlobalCache
                                                .instance.smallButtonSize,
                                            height: GlobalCache
                                                    .instance.smallButtonSize /
                                                1.5,
                                            child: CustomButton(
                                              text: '>',
                                              color: Colors.amber,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        bottom: 8.0,
                                        left: 8,
                                        right: 8,
                                        top: 10),
                                    child: Container(
                                      color: Colors.grey.shade400,
                                      child: Padding(
                                        padding: const EdgeInsets.only(
                                            left: 15,
                                            right: 20,
                                            top: 10,
                                            bottom: 10),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Text(
                                              'Total =',
                                              style: setTextStyle(
                                                  color: Colors.grey.shade700,
                                                  size: GlobalCache
                                                          .instance.fontSize +
                                                      5,
                                                  weight: FontWeight.bold),
                                            ),
                                            Text(
                                              '\$24',
                                              style: setTextStyle(
                                                  color: Colors.grey.shade700,
                                                  size: GlobalCache
                                                          .instance.fontSize +
                                                      12,
                                                  weight: FontWeight.w900),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 0, bottom: 0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 3),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              onPressed: () {},
                              color: Colors.red,
                              child: Text(
                                'CANCEL',
                                overflow: TextOverflow.visible,
                                style: setTextStyle(
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: GlobalCache.instance.fontSize + 1),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 3),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.cyan.shade600,
                              child: Text(
                                'VALIDER \nENCAISSER',
                                softWrap: false,
                                textAlign: TextAlign.center,
                                style: setTextStyle(
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: GlobalCache.instance.fontSize + 0),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 3),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.grey,
                              child: Text(
                                'DISC/REF',
                                overflow: TextOverflow.visible,
                                style: setTextStyle(
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: GlobalCache.instance.fontSize + 2),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8, top: 3),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.blueAccent,
                              child: Text(
                                '',
                                overflow: TextOverflow.visible,
                                style: setTextStyle(
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: GlobalCache.instance.fontSize + 3),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _build3rdRow(List<Widget> viewItems) {
    return viewItems.add(
      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(text: 'SANDWHICH'),
                CustomButton(text: 'TACOS'),
                CustomButton(text: 'TEX MEX'),
                CustomButton(text: 'HAMBURGER'),
                CustomButton(text: 'DESERT'),
                CustomButton(
                  text: 'BACK',
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _build5thRow(List<Widget> viewItems) {
    return viewItems.add(
      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                CustomButton(text: 'SUR PLACE'),
                CustomButton(text: 'EMPORTER'),
                CustomButton(text: 'LIVRAISON'),
                CustomButton(text: 'SUR PLACE'),
                SizedBox(
                  width: GlobalCache.instance.smallButtonSize + 8,
                  child: CustomButton(
                    text: '<<',
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: GlobalCache.instance.smallButtonSize + 8,
                  child: CustomButton(
                    text: '>>',
                    color: Colors.red,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _buildGreyButtonsRow(List<Widget> viewItems) {
    var buttonText = [
      "STORE",
      "PRODUCT",
      "TABLE",
      "COMMANDE",
      "PAYMENT",
      "DISCOUNT",
      "BUTTON"
    ];
    List<Widget> buttons = List();
    buttonText.forEach(
      (item) => buttons.add(
        RawMaterialButton(
          constraints: BoxConstraints(
            minWidth: GlobalCache.instance.buttonSize,
            minHeight: (GlobalCache.instance.buttonSize / 2.3) + 4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          fillColor: Colors.grey.shade500,
          elevation: 3,
          child: Text(
            item,
            style: setTextStyle(
              color: Colors.white,
              weight: FontWeight.bold,
            ),
          ),
          onPressed: () {},
        ),
      ),
    );
    viewItems.add(
      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: buttons,
            ),
          ),
        ),
      ),
    );
  }

  void _buildSmallButtonsRow(List<Widget> viewItems) {
    viewItems.add(
      Expanded(
        child: Container(
          child: Padding(
            padding: const EdgeInsets.only(right: 4),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.grey,
                ),
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.amber,
                ),
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.red,
                ),
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.grey,
                ),
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.amber,
                ),
                SmallButtonWithText(
                  text: 'Button',
                  color: Colors.red,
                ),
                SmallButtonWithIcon(
                  icon: Icons.notification_important,
                  color: Colors.grey,
                ),
                SmallButtonWithIcon(
                  icon: Icons.person,
                  color: Colors.amber,
                ),
                SmallButtonWithIcon(
                  icon: Icons.power_settings_new,
                  color: Colors.red,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE6E6E6), //Whole Page grey BG color
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              flex: 2, // For Navigation Bar
              child: Material(
                elevation: 4,
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: _buildNavbar(), //Navigation Bar
                    ),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 18, //Whole Right side of Navigation Bar
              child: Container(
                color: Colors.white10,
                child: Column(
                  children: _buildPortraitViewLayout(context),
                ),
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
    double paddingSpace = (MediaQuery.of(context).size.width / 8.5);
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
                                              fontSize: size,
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
                                    padding: EdgeInsets.only(
                                        left: paddingSpace, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem1Price
                              ? Visibility(
                                  child: Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Container(
                                          child: Text(
                                            "(\$8.00 off)",
                                            style: TextStyle(
                                                fontSize: size - 1,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
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
                                    padding: EdgeInsets.only(
                                        left: paddingSpace, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem2Price
                              ? Visibility(
                                  child: Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Container(
                                          child: Text(
                                            "(\$8.00 off)",
                                            style: TextStyle(
                                                fontSize: size - 1,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
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
                                    padding: EdgeInsets.only(
                                        left: paddingSpace, top: 3),
                                    child: Row(
                                      children: _listShowHideOptions(),
                                    ),
                                  ),
                                )
                              : Container(),
                          cartItem3Price
                              ? Visibility(
                                  child: Expanded(
                                    child: Align(
                                      alignment: Alignment.bottomRight,
                                      child: Padding(
                                        padding: const EdgeInsets.only(top: 15),
                                        child: Container(
                                          child: Text(
                                            "(\$8.00 off)",
                                            style: TextStyle(
                                                fontSize: size - 1,
                                                color: Colors.red),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container()
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
    double height = (MediaQuery.of(context).size.height / 30);
    double width = (height * 1.2);
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
}

class WhiteBoxRow extends StatelessWidget {
  const WhiteBoxRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> boxButtons = List();
    for (int i = 0; i < 5; i++) {
      boxButtons.add(
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 3),
            child: RawMaterialButton(
              constraints: BoxConstraints(
                minWidth: MediaQuery.of(context).size.width / 6.2,
                minHeight: MediaQuery.of(context).size.width / 7,
              ),
              fillColor: Colors.white,
              onPressed: () {},
            ),
          ),
        ),
      );
    }
    return Expanded(
      child: Row(
        children: boxButtons,
      ),
    );
  }
}
