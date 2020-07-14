import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DecoratedBox extends StatefulWidget {
  @override
  d_DecoratedBoxState createState() {
    return d_DecoratedBoxState();
  }
}

class d_DecoratedBoxState extends State<d_DecoratedBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBox'),
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
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.blue),
                child: Text('测试1'),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20)),
                child: Text('测试2'),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.red, width: 2),
                ),
                child: Text('测试3'),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/1.jpg'), fit: BoxFit.cover),
                  border: Border.all(color: Colors.blue, width: 2),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  height: 200,
                  width: 200,
                ),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('img/1.jpg'), fit: BoxFit.cover),
                  border: Border.all(color: Colors.blue, width: 2),
                  shape: BoxShape.circle,
                ),
                child: Container(
                  height: 140,
                  width: 150,
                ),
              ),
            ),
            Expanded(
              child: DecoratedBox(
                decoration: BoxDecoration(
                  gradient: RadialGradient(
                    center: const Alignment(-0.5, -0.6),
                    radius: 0.15,
                    colors: <Color>[
                      const Color(0xFFEEEEEE),
                      const Color(0xFF111133),
                    ],
                    stops: <double>[0.9, 1.0],
                  ),
                ),
                child: Container(
                  height: 200,
                  width: 200,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
