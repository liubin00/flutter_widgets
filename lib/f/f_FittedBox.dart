import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FittedBox extends StatefulWidget {
  @override
  f_FittedBoxState createState() {
    return f_FittedBoxState();
  }
}

class f_FittedBoxState extends State<f_FittedBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FittedBox'),
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
          height: 200,
          width: 200,
          color: Colors.green,
          child: FittedBox(
            child: Container(
              width: 100,
              height: 10,
              color: Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}
