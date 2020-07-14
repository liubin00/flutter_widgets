import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_Row extends StatefulWidget {
  @override
  r_RowState createState() {
    return r_RowState();
  }
}

class r_RowState
    extends State<r_Row> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Row'),
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
