import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_ListTileTheme extends StatefulWidget {
  @override
  l_ListTileThemeState createState() {
    return l_ListTileThemeState();
  }
}

class l_ListTileThemeState extends State<l_ListTileTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTileTheme'),
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
            ListTileTheme(
              dense: true,
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text('测试1'),
                subtitle: Text('测试2'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
