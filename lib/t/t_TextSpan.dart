import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TextSpan extends StatefulWidget {
  @override
  t_TextSpanState createState() {
    return t_TextSpanState();
  }
}

class t_TextSpanState extends State<t_TextSpan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextSpan'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: RichText(
        text: TextSpan(
            style: TextStyle(decoration: TextDecoration.none,fontSize: 25),
            children: <InlineSpan>[
              TextSpan(text: '测试测试', style: TextStyle(color: Colors.black)),
              TextSpan(text: '《测试测试》', style: TextStyle(color: Colors.red))
            ]),
      ),
    );
  }
}
