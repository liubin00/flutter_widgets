import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class o_Offstage extends StatefulWidget {
  @override
  o_OffstageState createState() {
    return o_OffstageState();
  }
}

class o_OffstageState extends State<o_Offstage> {
  bool _isOff = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Offstage'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Offstage(
              offstage: _isOff,
              child: Text('Offstage组件'),
            ),
            RaisedButton(
              child: Text(_isOff ? '显示' : '隐藏'),
              onPressed: () {
                setState(() {
                  _isOff = !_isOff;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
