import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CircleAvatar extends StatefulWidget {
  @override
  c_CircleAvatarState createState() {
    return c_CircleAvatarState();
  }
}

class c_CircleAvatarState extends State<c_CircleAvatar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CircleAvatar'),
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
            CircleAvatar(
              child: Text('测试1'),
              radius: 100,
              foregroundColor: Colors.blue,
            ),
            SizedBox(
              height: 100,
            ),
            CircleAvatar(
              child: Text(
                '测试2',
                style: TextStyle(color: Colors.black),
              ),
              radius: 100,
              backgroundImage: AssetImage('img/1.jpg'),
            )
          ],
        ),
      ),
    );
  }
}
