import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'd_DataCell.dart';
import 'd_DayPicker.dart';
import 'd_DecoratedBox.dart';
import 'd_DecoratedBoxTransition.dart';
import 'd_DefaultTextStyle.dart';
import 'd_DefaultTextStyleTransition.dart';
import 'd_Dialog.dart';
import 'd_Directionality.dart';
import 'd_Dismissible.dart';
import 'd_Divider.dart';
import 'd_DividerTheme.dart';
import 'd_DragTarget.dart';
import 'd_Draggable.dart';
import 'd_DraggableScrollableActuator.dart';
import 'd_DraggableScrollableSheet.dart';
import 'd_Drawer.dart';
import 'd_DrawerHeader.dart';
import 'd_DropdownButton.dart';
import 'd_DropdownButtonFormField.dart';
import 'd_DropdownButtonHideUnderline.dart';

class d_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('D'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DataCell'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DataCell()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DayPicker'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DayPicker()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DecoratedBox'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DecoratedBox()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DecoratedBoxTransition'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DecoratedBoxTransition()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DefaultTextStyle'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DefaultTextStyle()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DefaultTextStyleTransition'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DefaultTextStyleTransition()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Dialog'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => d_Dialog()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Directionality'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_Directionality()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Dismissible'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_Dismissible()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Divider'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => d_Divider()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DividerTheme'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DividerTheme()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DragTarget'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DragTarget()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Draggable'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_Draggable()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DraggableScrollableActuator'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DraggableScrollableActuator()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DraggableScrollableSheet'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DraggableScrollableSheet()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Drawer'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => d_Drawer()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DrawerHeader'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DrawerHeader()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DropDownButton'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => d_DropDownButton()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DropDownButtonFormField'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DropDownButtonFormField()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('DropdownButtonHideUnderline'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  d_DropdownButtonHideUnderline()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
