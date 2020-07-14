import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoScrollBar extends StatefulWidget {
  @override
  c_CupertinoScrollBarState createState() {
    return c_CupertinoScrollBarState();
  }
}

class c_CupertinoScrollBarState extends State<c_CupertinoScrollBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoScrollBar'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Scrollbar(
          child: ListView.builder(
            itemBuilder: (BuildContext context, int index) {
              return Text('$index');
            },
            itemCount: 50,
            itemExtent: 50,
          ),
        ),
      ),
    );
  }
}
