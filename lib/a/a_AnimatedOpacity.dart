import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedOpacity extends StatefulWidget {
  @override
  a_AnimatedOpacityState createState() {
    return a_AnimatedOpacityState();
  }
}

class a_AnimatedOpacityState extends State<a_AnimatedOpacity> {
  var _opacity = 1.0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedOpacity'),
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
            AnimatedOpacity(
              opacity: _opacity,
              duration: Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 300,
                color: Colors.yellow,
              ),
            ),
            RaisedButton(
              child: Text("切换"),
              onPressed: () {
                setState(() {
                  if (_opacity == 0.0) {
                    _opacity = 1.0;
                  } else {
                    _opacity = 0.0;
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
