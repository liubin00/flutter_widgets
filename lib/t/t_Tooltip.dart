import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_Tooltip extends StatefulWidget {
  @override
  t_TooltipState createState() {
    return t_TooltipState();
  }
}

class t_TooltipState extends State<t_Tooltip> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Tooltip'),
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
              child: Text('长按图标'),
            ),
            Container(
              child: Tooltip(
                message: '测试',
                waitDuration: Duration(seconds: 1),
                showDuration: Duration(seconds: 2),
                child: Icon(
                  Icons.smartphone,
                  size: 50,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
