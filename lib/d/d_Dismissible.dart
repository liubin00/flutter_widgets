import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_Dismissible extends StatefulWidget {
  @override
  d_DismissibleState createState() {
    return d_DismissibleState();
  }
}

class d_DismissibleState extends State<d_Dismissible> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Dismissible'),
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
              height: 50,
            ),
            Dismissible(
              key: ValueKey('key1'),
              child: Container(
                height: 80,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Dismissible(
              onDismissed: (DismissDirection direction) {
                return false;
              },
              key: ValueKey('key2'),
              child: Container(
                height: 80,
                color: Colors.blue,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Dismissible(
              onDismissed: (DismissDirection direction) {
                return false;
              },
              direction: DismissDirection.vertical,
              resizeDuration: Duration(seconds: 1),
              dismissThresholds: {DismissDirection.endToStart: 0.8},
              movementDuration: Duration(seconds: 1),
              crossAxisEndOffset: 0.5,
              key: ValueKey('key3'),
              child: Container(
                height: 80,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
