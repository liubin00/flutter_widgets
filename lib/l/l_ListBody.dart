import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_ListBody extends StatefulWidget {
  @override
  l_ListBodyState createState() {
    return l_ListBodyState();
  }
}

class l_ListBodyState extends State<l_ListBody> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListBody'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: <Widget>[
            Container(
              height: 45,
              color: Colors.primaries[0],
            ),
            Container(
              height: 45,
              color: Colors.primaries[1],
            ),
            Container(
              height: 45,
              color: Colors.primaries[2],
            )
          ],
        ),
      ),
    );
  }
}
