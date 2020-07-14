import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_IconTheme extends StatefulWidget {
  @override
  i_IconThemeState createState() {
    return i_IconThemeState();
  }
}

class i_IconThemeState extends State<i_IconTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IconTheme'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: IconTheme(
          data: IconThemeData(color: Colors.red, opacity: 3.0, size: 36),
          child: Container(
            padding: EdgeInsets.all(20.0),
            child: Icon(Icons.equalizer),
          ),
        ),
      ),
    );
  }
}
