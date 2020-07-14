import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_Icon extends StatefulWidget {
  @override
  i_IconState createState() {
    return i_IconState();
  }
}

class i_IconState
    extends State<i_Icon> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Icon'),
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
