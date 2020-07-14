import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DividerTheme extends StatefulWidget {
  @override
  d_DividerThemeState createState() {
    return d_DividerThemeState();
  }
}

class d_DividerThemeState extends State<d_DividerTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DividerTheme'),
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
            SizedBox(
              height: 300,
            ),
            DividerTheme(
              data: DividerThemeData(color: Colors.red),
              child: Divider(),
            ),
          ],
        ),
      ),
    );
  }
}
