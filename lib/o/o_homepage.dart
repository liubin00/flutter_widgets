import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'o_Offstage.dart';
import 'o_Opacity.dart';
import 'o_OrientationBuilder.dart';
import 'o_OutlineButton.dart';
import 'o_OutlineInputBorder.dart';
import 'o_OverflowBox.dart';
import 'o_Overlay.dart';

class o_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('o'),
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
                    child: Text('NavigationToolbar'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => o_Offstage()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Opacity'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => o_Opacity()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('OrientationBuilder'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => o_OrientationBuilder()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('OutlineButton'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => o_OutlineButton()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('OutlineInputBorder'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => o_OutlineInputBorder()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('OverflowBox'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => o_OverflowBox()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Overlay'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => o_Overlay()));
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
