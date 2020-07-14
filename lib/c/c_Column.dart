import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_Column extends StatefulWidget {
  @override
  c_ColumnState createState() {
    return c_ColumnState();
  }
}

class c_ColumnState extends State<c_Column> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Column'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.blue,
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  height: 50,
                  width: 100,
                  color: Colors.red,
                ),
                Container(
                  height: 100,
                  width: 100,
                  color: Colors.green,
                ),
                Container(
                  height: 150,
                  width: 100,
                  color: Colors.blue,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
