import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedPositionedDirectional extends StatefulWidget {
  @override
  a_AnimatedPositionedDirectionalState createState() {
    return a_AnimatedPositionedDirectionalState();
  }
}

class a_AnimatedPositionedDirectionalState
    extends State<a_AnimatedPositionedDirectional> {
  var _start = 10.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPositionedDirectional'),
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
              width: 300,
              height: 300,
              color: Colors.blue,
              child: Stack(
                children: <Widget>[
                  AnimatedPositionedDirectional(
                    start: _start,
                    width: 50,
                    height: 50,
                    duration: Duration(seconds: 2),
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            ),
            RaisedButton(
              child: Text('变化'),
              onPressed: () {
                setState(() {
                  if (_start == 30.0) {
                    _start = 180;
                  } else {
                    _start = 30.0;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
