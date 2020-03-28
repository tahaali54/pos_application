import 'package:flutter/material.dart';
import 'package:responsive_app/global.dart';

import 'Custom Widgets/custom_button.dart';
import 'Custom Widgets/slidable_list_tile.dart';
import 'Custom Widgets/small_button.dart';

class PortraitPage extends StatelessWidget {
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
          iconSize: GlobalCache.instance.iconSize,
          icon: Icon(Icons.menu),
          onPressed: () {},
        ),
      ),
    );

    icons.forEach(
      (item) => navbarItems.add(
        Expanded(
          child: IconButton(
            iconSize: GlobalCache.instance.iconSize,
            icon: Icon(item),
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
        width: MediaQuery.of(context).size.width,
        height: (MediaQuery.of(context).size.width / 7) * 4,
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

  void _buildRowWithListView(List<Widget> viewItems) {
    return viewItems.add(
      Expanded(
        flex: 5,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: <Widget>[
                Expanded(
                    flex: 4,
                    child: Material(
                      elevation: 2,
                      child: Container(
                        color: Colors.white,
                        child: Column(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, top: 8, right: 8, bottom: 4),
                              child: SizedBox(
                                child: SlidableListTile(),
                                height:
                                    GlobalCache.instance.slidableListTileSize,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 4),
                              child: SizedBox(
                                child: SlidableListTile(),
                                height:
                                    GlobalCache.instance.slidableListTileSize,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 8, right: 8, bottom: 4),
                              child: SizedBox(
                                child: SlidableListTile(),
                                height:
                                    GlobalCache.instance.slidableListTileSize,
                              ),
                            ),
                            Expanded(child: Container()),
                            Padding(
                              padding:
                                  const EdgeInsets.only(right: 8, bottom: 4),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  SizedBox(
                                    width: GlobalCache.instance.smallButtonSize,
                                    height:
                                        GlobalCache.instance.smallButtonSize /
                                            2,
                                    child: CustomButton(
                                      text: '<',
                                      color: Colors.orange,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 8.0),
                                    child: SizedBox(
                                      width:
                                          GlobalCache.instance.smallButtonSize,
                                      height:
                                          GlobalCache.instance.smallButtonSize /
                                              2,
                                      child: CustomButton(
                                        text: '>',
                                        color: Colors.orange,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  bottom: 8.0, left: 8, right: 8),
                              child: Container(
                                color: Colors.grey,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                      Text(
                                        'Total =',
                                        style: setTextStyle(
                                            size:
                                                GlobalCache.instance.fontSize +
                                                    3,
                                            weight: FontWeight.bold),
                                      ),
                                      Text(
                                        '\$24',
                                        style: setTextStyle(
                                            size:
                                                GlobalCache.instance.fontSize +
                                                    9),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: <Widget>[
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: RaisedButton(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              onPressed: () {},
                              color: Colors.red,
                              child: Text(
                                'CANCEL',
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
                            padding: const EdgeInsets.only(bottom: 8),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.lightGreen,
                              child: Text(
                                'VALIDER \nENCAISSER',
                                textAlign: TextAlign.center,
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
                            padding: const EdgeInsets.only(bottom: 4),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.grey,
                              child: Text(
                                'DISC/REF',
                                style: setTextStyle(
                                    color: Colors.white,
                                    weight: FontWeight.bold,
                                    size: GlobalCache.instance.fontSize + 3),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(top: 4),
                            child: RaisedButton(
                              onPressed: () {},
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              color: Colors.blueAccent,
                              child: Text(
                                '',
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
                  width: GlobalCache.instance.smallButtonSize,
                  child: CustomButton(
                    text: '<<',
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: GlobalCache.instance.smallButtonSize,
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
            minHeight: (GlobalCache.instance.buttonSize / 2) + 4,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          fillColor: Colors.black38,
          elevation: 0,
          child: Text(
            item,
            style: setTextStyle(color: Colors.white, weight: FontWeight.bold),
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
                  color: Colors.orange,
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
      body: SafeArea(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Material(
                elevation: 4,
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: _buildNavbar(),
                  ),
                  color: Colors.white,
                ),
              ),
            ),
            Expanded(
              flex: 12,
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
            padding: const EdgeInsets.symmetric(horizontal: 2, vertical: 2),
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
