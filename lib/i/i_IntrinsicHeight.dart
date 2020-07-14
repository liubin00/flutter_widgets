import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_IntrinsicHeight extends StatefulWidget {
  @override
  i_IntrinsicHeightState createState() {
    return i_IntrinsicHeightState();
  }
}

class i_IntrinsicHeightState extends State<i_IntrinsicHeight> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IntrinsicHeight'),
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
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    color: Colors.black,
                    width: 100,
                    height: 200,
                  ),
                  Container(
                    color: Colors.red,
                    width: 50,
                    height: 50,
                  ),
                  Container(
                    color: Colors.yellow,
                    width: 150,
                    height: 300,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
