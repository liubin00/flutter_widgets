import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RotatedBox extends StatefulWidget {
  @override
  r_RotatedBoxState createState() {
    return r_RotatedBoxState();
  }
}

class r_RotatedBoxState extends State<r_RotatedBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RotatedBox'),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  DecoratedBox(
                    decoration: BoxDecoration(color: Colors.red),
                    child: RotatedBox(
                      //旋转一次为90度
                      quarterTurns: 2,
                      child: Text('Hello world'),
                    ),
                  ),
                  Text(
                    '测试',
                    style: TextStyle(color: Colors.green, fontSize: 20.0),
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
