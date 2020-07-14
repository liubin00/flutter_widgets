import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b_BackDropFileter extends StatefulWidget {
  @override
  b_BackDropFileterState createState() {
    return b_BackDropFileterState();
  }
}

class b_BackDropFileterState extends State<b_BackDropFileter> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BackDropFilter'),
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
              height: 400,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  Container(
                    width: 300,
                    height: 400,
                    child: Image.asset('img/1.jpg'),
                  ),
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: Center(
                      child: Container(
                        child: Text(
                          'BackDropFilter',
                          style: TextStyle(color: Colors.black),
                        ),
                        color: Colors.red.withOpacity(0),
                      ),
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
