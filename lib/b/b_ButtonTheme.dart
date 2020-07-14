import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b_ButtonTheme extends StatefulWidget {
  @override
  b_ButtonThemeState createState() {
    return b_ButtonThemeState();
  }
}

class b_ButtonThemeState extends State<b_ButtonTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ButtonThemed'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ButtonTheme(
          textTheme: ButtonTextTheme.primary,
          child: RaisedButton(
            child: Text('测试'),
            onPressed: () {},
            splashColor: Colors.pink,
          ),
        ),
      ),
    );
  }
}
