import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/u/u_UnconstrainedBox.dart';
import 'package:flutterwidgets/v/v_VerticalDivider.dart';
import 'package:flutterwidgets/v/v_Visibility.dart';

class v_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('V'),
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
                    child: Text('VerticalDivider'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => v_VerticalDivider()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Visibility'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => v_Visibility()));
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
