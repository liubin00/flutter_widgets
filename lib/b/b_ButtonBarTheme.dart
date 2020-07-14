import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b_ButtonBarTheme extends StatefulWidget {
  @override
  b_ButtonBarThemeState createState() {
    return b_ButtonBarThemeState();
  }
}

class b_ButtonBarThemeState extends State<b_ButtonBarTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonBarTheme'),
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
            ButtonBarTheme(
              data: ButtonBarThemeData(
                  alignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max),
              child: ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('测试1'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('测试2'),
                    onPressed: () {},
                  ),
                  RaisedButton(
                    child: Text('测试3'),
                    onPressed: () {},
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
