import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutterwidgets/w/w_WidgetSpan.dart';
import 'package:flutterwidgets/w/w_WillPopScope.dart';
import 'package:flutterwidgets/w/w_Wrap.dart';

class w_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('W'),
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
                    child: Text('WidgetSpan'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => w_WidgetSpan()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('WillPopScope'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => w_WillPopScope()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Wrap'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => w_Wrap()));
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
