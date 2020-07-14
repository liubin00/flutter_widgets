import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedSize extends StatefulWidget {
  @override
  a_AnimatedSizeState createState() {
    return a_AnimatedSizeState();
  }
}

class a_AnimatedSizeState extends State<a_AnimatedSize>
    with SingleTickerProviderStateMixin {
  var _height = 100.0;
  var _width = 100.0;
  var _color = Colors.red;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSize'),
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
            AnimatedSize(
              vsync: this,
              duration: Duration(seconds: 1),
              child: Container(
                height: _height,
                width: _width,
                color: _color,
              ),
            ),
            RaisedButton(
              child: Text('变换'),
              onPressed: () {
                setState(() {
                  if (_height == 100 && _width == 100 && _color == Colors.red) {
                    _height = 200.0;
                    _width = 200.0;
                    _color = Colors.blue;
                  } else {
                    _height = 100.0;
                    _width = 100.0;
                    _color = Colors.red;
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
