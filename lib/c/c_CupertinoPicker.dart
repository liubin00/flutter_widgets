import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoPicker extends StatefulWidget {
  @override
  c_CupertinoPickerState createState() {
    return c_CupertinoPickerState();
  }
}

class c_CupertinoPickerState extends State<c_CupertinoPicker> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoPicker'),
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
            CupertinoPicker(
              itemExtent: 45,
              onSelectedItemChanged: (index) {
                setState(() {});
              },
              children: <Widget>[
                Container(
                  color: Colors.primaries[1],
                ),
                Container(
                  color: Colors.primaries[2],
                ),
                Container(
                  color: Colors.primaries[3],
                ),
                Container(
                  color: Colors.primaries[4],
                ),
                Container(
                  color: Colors.primaries[5],
                ),
                Container(
                  color: Colors.primaries[6],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
