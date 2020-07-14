import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedDefaultTextStyle extends StatefulWidget {
  @override
  a_AnimatedDefaultTextStyleState createState() {
    return a_AnimatedDefaultTextStyleState();
  }
}

class a_AnimatedDefaultTextStyleState extends State<a_AnimatedDefaultTextStyle>
    with SingleTickerProviderStateMixin {
  TextStyle _style;

  @override
  void initState() {
    _style = TextStyle(color: Colors.blueAccent, fontSize: 14);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('a_AnimatedDefaultTextStyle'),
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
            SizedBox(
              height: 200,
            ),
            AnimatedDefaultTextStyle(
              style: _style,
              duration: Duration(seconds: 2),
              child: Text('测试'),
            ),
            SizedBox(
              height: 100,
            ),
            RaisedButton(
              child: Text('变换'),
              onPressed: () {
                setState(() {
                  _style = TextStyle(color: Colors.red, fontSize: 24);
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
