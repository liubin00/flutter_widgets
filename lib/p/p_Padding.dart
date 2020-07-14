import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_Padding extends StatefulWidget {
  @override
  p_PaddingState createState() {
    return p_PaddingState();
  }
}

class p_PaddingState extends State<p_Padding> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding'),
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
            Container(
              child: Padding(
                padding: EdgeInsets.all(20),
                child: Text('测试1'),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
                child: Text('测试2'),
              ),
            ),
            Container(
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                child: Text('测试3'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
