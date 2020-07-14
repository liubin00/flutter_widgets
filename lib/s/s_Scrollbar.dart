import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Scrollbar extends StatefulWidget {
  @override
  s_ScrollbarState createState() {
    return s_ScrollbarState();
  }
}

class s_ScrollbarState extends State<s_Scrollbar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Scrollbar'),
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
              return Text('测试$index');
            },
            itemExtent: 50,
            itemCount: 50,
          ),
        ),
      ),
    );
  }
}
