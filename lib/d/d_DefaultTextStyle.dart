import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DefaultTextStyle extends StatefulWidget {
  @override
  d_DefaultTextStyleState createState() {
    return d_DefaultTextStyleState();
  }
}

class d_DefaultTextStyleState extends State<d_DefaultTextStyle> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyle'),
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
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.red, fontSize: 50),
                child: Text('测试1'),
              ),
            ),
            Expanded(
              child: DefaultTextStyle(
                style: TextStyle(color: Colors.blue, fontSize: 50),
                child: Text(
                  '测试2',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: <Widget>[
                  Container(
                    width: 400,
                    color: Colors.red,
                    child: DefaultTextStyle(
                      style: TextStyle(fontSize: 30),
                      overflow: TextOverflow.ellipsis,
                      child: Text('测试测试测试测试测试测试测试测试测试'),
                    ),
                  ),
                  Text('超出部分省略号显示')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
