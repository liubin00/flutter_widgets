import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/t/t_Tab.dart';
import 'package:flutterwidgets/t/t_TabPageSelector.dart';
import 'package:flutterwidgets/t/t_TabPageSelectorIndicator.dart';
import 'package:flutterwidgets/t/t_Table.dart';
import 'package:flutterwidgets/t/t_Text.dart';
import 'package:flutterwidgets/t/t_TextField.dart';
import 'package:flutterwidgets/t/t_TextFormField.dart';
import 'package:flutterwidgets/t/t_TextSpan.dart';
import 'package:flutterwidgets/t/t_ToggleButtons.dart';
import 'package:flutterwidgets/t/t_Tooltip.dart';
import 'package:flutterwidgets/t/t_Transform.dart';
import 'package:flutterwidgets/t/t_TweenAnimationBuilder.dart';

class t_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('T'),
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
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Tab'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => t_Tab()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TabPageSelector'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_TabPageSelector()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TabPageSelectorIndicator'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  t_TabPageSelectorIndicator()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Table'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => t_Table()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Text'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => t_Text()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TextField'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_TextField()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TextFormField'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_TextFormField()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TextSpan'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_TextSpan()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('ToggleButtons'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_ToggleButtons()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Tooltip'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => t_Tooltip()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Transform'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_Transform()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('TweenAnimationBuilder'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => t_TweenAnimationBuilder()));
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
