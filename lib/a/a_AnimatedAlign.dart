import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedAlign extends StatefulWidget {
  @override
  a_AnimatedAlignState createState() {
    return a_AnimatedAlignState();
  }
}

class a_AnimatedAlignState extends State<a_AnimatedAlign> {
  var _alignment = Alignment.topCenter;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedAlign'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          width: 200,
          height: 200,
          color: Colors.blue,
          child: AnimatedAlign(
            alignment: _alignment,
            duration: Duration(seconds: 2),
            child: IconButton(
              icon: Icon(
                Icons.favorite,
                color: Colors.red,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  _alignment = Alignment.bottomCenter;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
