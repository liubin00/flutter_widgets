import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoTheme extends StatefulWidget {
  @override
  c_CupertinoThemeState createState() {
    return c_CupertinoThemeState();
  }
}

class c_CupertinoThemeState extends State<c_CupertinoTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoTheme'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Theme(
        data: ThemeData(primaryColor: Colors.grey),
        child: Scaffold(
          appBar: AppBar(
            title: Text('CupertinoTheme'),
          ),
        ),
      ),
    );
  }
}
