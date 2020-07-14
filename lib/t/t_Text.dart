import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_Text extends StatefulWidget {
  @override
  t_TextState createState() {
    return t_TextState();
  }
}

class t_TextState extends State<t_Text> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Text'),
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
              width: 200,
              height: 200,
              color: Colors.black,
              child: Text(
                '测试测试测试',
                style: TextStyle(fontSize: 30, color: Colors.white),
                textDirection: TextDirection.rtl,
                softWrap: true,
                textScaleFactor: 1.5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
