import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_IntrinsicWidth extends StatefulWidget {
  @override
  i_IntrinsicWidthState createState() {
    return i_IntrinsicWidthState();
  }
}

class i_IntrinsicWidthState extends State<i_IntrinsicWidth> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IntrinsicWidth'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            IntrinsicWidth(
              stepHeight: 450,
              stepWidth: 300,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.blue,
                    height: 100,
                  ),
                  Container(
                    color: Colors.red,
                    width: 150,
                    height: 100,
                  ),
                  Container(
                    color: Colors.yellow,
                    height: 150,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
