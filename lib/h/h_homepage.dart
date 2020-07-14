import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'h_Hero.dart';

class h_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('H'),
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
                    child: Text('GestureDetector'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => h_Hero()));
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
