import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_Positioned extends StatefulWidget {
  @override
  p_PositionedState createState() {
    return p_PositionedState();
  }
}

class p_PositionedState extends State<p_Positioned> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Poistioned'),
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
              width: 200,
              height: 200,
              color: Colors.blue,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: 10,
                    right: 10,
                    top: 10,
                    bottom: 10,
                    child: Container(
                      color: Colors.red,
                    ),
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
