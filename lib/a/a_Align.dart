import 'package:flutter/material.dart';

class a_Align extends StatefulWidget {
  @override
  a_AlignState createState() {
    return a_AlignState();
  }
}

class a_AlignState extends State<a_Align> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Align'),
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
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Align(
                child: Text(
                  '测试',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Text(
                  '测试',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              color: Colors.blue,
              width: 200,
              height: 200,
              child: Align(
                alignment: Alignment(-0.4, 0.5),
                child: Text(
                  '测试',
                  style: TextStyle(fontSize: 19),
                ),
              ),
            ),
            Container(
              width: 20,
              height: 20,
              color: Colors.white,
            ),
            Container(
              color: Colors.blue,
              child: Align(
                widthFactor: 4,
                heightFactor: 4,
                child: Container(
                  height: 50,
                  width: 50,
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
