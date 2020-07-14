import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedPositioned extends StatefulWidget {
  @override
  a_AnimatedPositionedState createState() {
    return a_AnimatedPositionedState();
  }
}

class a_AnimatedPositionedState extends State<a_AnimatedPositioned> {
  var _top = 30.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositioned'),
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
              height: 300,
              color: Colors.blue,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  AnimatedPositioned(
                    top: _top,
                    duration: Duration(seconds: 2),
                    child: Container(
                      height: 50,
                      width: 50,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              child: Text('变换'),
              onPressed: () {
                setState(() {
                    _top = 180;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
