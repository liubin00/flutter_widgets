import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_InputDecorator extends StatefulWidget {
  @override
  i_InputDecoratorState createState() {
    return i_InputDecoratorState();
  }
}

class i_InputDecoratorState extends State<i_InputDecorator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('InputDecorator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: InputDecorator(
          isFocused: true,
          decoration: InputDecoration(),
          child: Text('测试'),
        ),
      ),
    );
  }
}
