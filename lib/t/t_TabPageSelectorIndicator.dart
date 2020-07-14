import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TabPageSelectorIndicator extends StatefulWidget {
  @override
  t_TabPageSelectorIndicatorState createState() {
    return t_TabPageSelectorIndicatorState();
  }
}

class t_TabPageSelectorIndicatorState
    extends State<t_TabPageSelectorIndicator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TabPageSelectorIndicator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        width: 300,
        height: 300,
        margin: const EdgeInsets.all(4.0),
        decoration: BoxDecoration(
          color: Colors.blue,
          border: Border.all(color: Colors.red),
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
