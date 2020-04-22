import 'package:flutter/material.dart';

// ignore: must_be_immutable
class TaskBar extends StatelessWidget {
  List<String> options = <String>['Mega', 'item2', 'item3'];
  String dropdownValue = 'Mega';

  double size;

  TaskBar(double size){
    this.size = size;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(),
          child: IconButton(
              icon: Icon(
                Icons.format_align_right,
                color: Colors.amberAccent,
                size: size,
              ),
              onPressed: () {}),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 0),
          child: Text(
            'Oubba',
            style: TextStyle(fontSize: size),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 4, right: 0),
          child: Icon(
            Icons.arrow_back_ios,
            size: size,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 1),
          child: DropdownButton(
              icon: Icon(Icons.keyboard_arrow_down),
              items: options.map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(
                    value,
                    style: TextStyle(fontSize: size),
                  ),
                );
              }).toList(),
              value: dropdownValue,
              underline: Container(),
              onChanged: (String newValue) {
                dropdownValue = newValue;
              }),
        ),
        Expanded(child: Container()),
        FittedBox(
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right:6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'Button',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.grey,
                        style: BorderStyle.solid,
                        width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'Button',
                        style: TextStyle(
                            color: Colors.cyan.shade800,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Colors.cyan.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.cyan.shade800,
                        style: BorderStyle.solid,
                        width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'Button',
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.red, style: BorderStyle.solid, width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'DAY',
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Colors.grey,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.grey, style: BorderStyle.solid, width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'PARKED',
                        style: TextStyle(
                            color: Colors.cyan.shade800,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    color: Colors.cyan.shade800,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.cyan.shade800,
                        style: BorderStyle.solid,
                        width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,

                  child: OutlineButton(
                    child: FittedBox(
                      child: Text(
                        'HISTORY',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: size - 2,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    color: Colors.red,
                    borderSide: BorderSide(
                        color: Colors.red, style: BorderStyle.solid, width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Value1',
                    child: Text('NOTIFICATIONS'),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Value2',
                    child: Divider(
                      height: 0,
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value3',
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.red,
                      ),
                      title: Text('Completed the task'),
                      subtitle: Text('2 days ago'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value3',
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.blue,
                      ),
                      title: Text('Settings updated'),
                      subtitle: Text('3 days ago'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value3',
                    child: ListTile(
                      leading: CircleAvatar(
                        backgroundColor: Colors.green,
                      ),
                      title: Text('Completed the task'),
                      subtitle: Text('2 days ago'),
                    ),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value4',
                    child: Text(
                      'All notifications',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                ],
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0, right:6.0),
                  child: Container(
                    height: size + 25,
                    width: size + 55,
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.grey,width: 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(8)),),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.grey,
                      size: size + 8,
                    ),
                  ),
                ),
              ),

              PopupMenuButton(
                itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
                  PopupMenuItem<String>(
                    value: 'Value1',
                    child: FlatButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.account_circle),
                        label: Text('Profile')),
                  ),
                  const PopupMenuItem<String>(
                    value: 'Value2',
                    child: Divider(),
                  ),
                  PopupMenuItem<String>(
                    value: 'Value3',
                    child: FlatButton.icon(
                        onPressed: null,
                        icon: Icon(Icons.power_settings_new),
                        label: Text('Logout')),
                  ),
                ],
                child: Padding(
                  padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                  child: Container(
                    height: size + 25,
                    width: size + 55,
                    decoration: BoxDecoration(shape: BoxShape.rectangle,
                      border: Border.all(color: Colors.amberAccent,width: 0.8),
                      borderRadius: BorderRadius.all(Radius.circular(8)),),
                    child: Icon(
                      Icons.person_outline,
                      color: Colors.amberAccent,
                      size: size + 8,
                    ),
                  ),
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 6.0, right: 6.0),
                child: Container(
                  height: size + 25,
                  width: size + 55,
                  child: OutlineButton(
                    child: Icon(
                      Icons.power_settings_new,
                      color: Colors.red,
                      size: size + 8,
                    ),
                    color: Colors.red,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0)),
                    borderSide: BorderSide(
                        color: Colors.red, style: BorderStyle.solid, width: 0.8),
                    onPressed: () {},
                  ),
                ),
              ),
            ],
          ),
        ),


      ],
    );
  }

}