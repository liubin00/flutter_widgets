
import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CustomPaint extends StatefulWidget {
  @override
  c_CustomPaintState createState() {
    return c_CustomPaintState();
  }
}

class c_CustomPaintState extends State<c_CustomPaint> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomPaint'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomPaint(
        painter: MyCustomPainter(),
      ),
    );
  }
}

class MyCustomPainter extends CustomPainter {
  Paint _paint = Paint()
    ..color = Colors.red
    ..style = PaintingStyle.stroke
    ..strokeWidth = 3;

  @override
  void paint(Canvas canvas, Size size) {
    print('size:$size');
    var _path = Path()
      ..moveTo(999, 999)
      ..lineTo(size.width, 0)
      ..lineTo(size.width, size.height)
      ..close();
    canvas.drawPath(_path, _paint);
  }

  @override
  bool shouldRepaint(MyCustomPainter oldDelegate) {
    return true;
  }
}
