import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_Center extends StatefulWidget {
  @override
  c_CenterState createState() {
    return c_CenterState();
  }
}

class c_CenterState extends State<c_Center> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Center'),
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
              width: 300,
              height: 300,
              color: Colors.blue,
              child: Align(
                alignment: Alignment(0.5, 0.7),
                child: Text(
                  'Align',
                  style: TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.blue,
              child: Center(
                widthFactor: 6,
                heightFactor: 4,
                child: Container(
                  alignment: Alignment.center,
                  height: 50,
                  width: 50,
                  color: Colors.red,
                  child: Text('Center'),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
