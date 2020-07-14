import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_Transform extends StatefulWidget {
  @override
  t_TransformState createState() {
    return t_TransformState();
  }
}

class t_TransformState extends State<t_Transform> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Transform'),
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
              child: Transform(
                transform: Matrix4.rotationZ(0.5),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Container(
              color: Colors.blue,
              child: Transform(
                transform: Matrix4.rotationZ(0.5),
                origin: Offset(50, 50),
                child: Container(
                  height: 100,
                  width: 100,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
