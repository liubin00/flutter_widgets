import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AssetImage extends StatefulWidget {
  @override
  a_AssetImageState createState() {
    return a_AssetImageState();
  }
}

class a_AssetImageState extends State<a_AssetImage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AssetImage'),
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
            Icon(Icons.add),
            Icon(
              Icons.add,
              size: 60,
              color: Colors.red,
            ),
            ImageIcon(
              AssetImage('img/16.jpg'),
              size: 300,
              color: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
