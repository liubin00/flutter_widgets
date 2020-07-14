import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_Divider extends StatefulWidget {
  @override
  d_DividerState createState() {
    return d_DividerState();
  }
}

class d_DividerState extends State<d_Divider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Divider'),
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
            Container(
              height: 300,
              child: Divider(
                height: 10,
                thickness: 5,
                color: Colors.red,
                indent: 10,
                endIndent: 20,
              ),
            ),
            Container(
              height: 300,
              child: VerticalDivider(
                width: 20,
                thickness: 2,
                color: Colors.red,
                indent: 10,
                endIndent: 10,
              ),
            )
          ],
        ),
      ),
    );
  }
}
