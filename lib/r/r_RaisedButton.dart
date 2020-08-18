import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RaisedButton extends StatefulWidget {
  @override
  r_RaisedButtonState createState() {
    return r_RaisedButtonState();
  }
}

class r_RaisedButtonState extends State<r_RaisedButton> {
  var _dropValue = null;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RaisedButton'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('RaisedButton'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  child: Text('RaisedButton'),
                  elevation: 5.0,
                  highlightElevation: 5.0,
                  disabledElevation: 5.0,
                  shape: CircleBorder(),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                FlatButton(
                  child: Text('FlatButton'),
                  color: Colors.blue,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                OutlineButton(
                  child: Text('OutlineButton'),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                  disabledBorderColor: Colors.black,
                  highlightedBorderColor: Colors.grey,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                DropdownButton(
                  icon: Icon(Icons.add),
                  iconSize: 24,
                  hint: Text('请选择'),
                  value: _dropValue,
                  items: [
                    DropdownMenuItem(
                      child: Text('语文'),
                      value: '语文',
                    ),
                    DropdownMenuItem(
                      child: Text('数学'),
                      value: '数学',
                    ),
                    DropdownMenuItem(
                      child: Text('英语'),
                      value: '英语',
                    )
                  ],
                  onChanged: (value) {
                    setState(() {
                      _dropValue = value;
                    });
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                RawMaterialButton(
                  fillColor: Colors.blueAccent,
                  child: Text('RawMaterialButton'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                PopupMenuButton<String>(
                  shape: RoundedRectangleBorder(
                      side: BorderSide(color: Colors.red),
                      borderRadius: BorderRadius.circular(10)),
                  initialValue: '语文',
                  tooltip: '长按时弹出',
                  itemBuilder: (context) {
                    return <PopupMenuEntry<String>>[
                      PopupMenuItem<String>(
                        value: '语文',
                        child: Text('语文'),
                      ),
                      PopupMenuItem<String>(
                        value: '数学',
                        child: Text('数学'),
                      ),
                      PopupMenuItem<String>(
                        value: '英语',
                        child: Text('英语'),
                      ),
                      PopupMenuItem<String>(
                        value: '生物',
                        child: Text('生物'),
                      ),
                      PopupMenuItem<String>(
                        value: '化学',
                        child: Text('化学'),
                      )
                    ];
                  },
                ),
                SizedBox(
                  height: 30,
                ),
                IconButton(
                  tooltip: 'IconButton',
                  icon: Icon(Icons.people_outline),
                  iconSize: 40,
                  color: Colors.redAccent,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      BackButton(),
                      BackButtonIcon(),
                      CloseButton(),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ButtonBar(
                  alignment: MainAxisAlignment.center,
                  children: <Widget>[
                    RaisedButton(
                      child: Text('bt1'),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text('bt2'),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text('bt3'),
                      onPressed: () {},
                    ),
                    RaisedButton(
                      child: Text('bt3'),
                      onPressed: () {},
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                CupertinoButton(
                  child: Text('ios风格按钮'),
                  color: Colors.blue,
                  pressedOpacity: .5,
                  borderRadius: BorderRadius.circular(40),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
