import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_Container extends StatefulWidget {
  @override
  c_ContainerState createState() {
    return c_ContainerState();
  }
}

class c_ContainerState extends State<c_Container> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Container'),
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
              child: Text('测试1'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.blue,
              child: Text('测试2'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.blue,
              child: Text('测试3'),
              padding: EdgeInsets.all(20),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text('测试4'),
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text('测试5'),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                  color: Colors.blue),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text('测试6'),
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.blue, width: 2)),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('img/1.jpg'),
                  fit: BoxFit.cover,
                ),
                border: Border.all(
                  color: Colors.blue,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('img/1.jpg'),
                    fit: BoxFit.cover,
                  ),
                  border: Border.all(color: Colors.blue, width: 2),
                  shape: BoxShape.circle),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              color: Colors.blue,
              child: Text('测试7'),
              alignment: Alignment.center,
              height: 60,
              width: 200,
              transform: Matrix4.rotationZ(0.5),
            )
          ],
        ),
      ),
    );
  }
}
