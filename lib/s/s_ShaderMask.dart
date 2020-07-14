import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_ShaderMask extends StatefulWidget {
  @override
  s_ShaderMaskState createState() {
    return s_ShaderMaskState();
  }
}

class s_ShaderMaskState extends State<s_ShaderMask> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ShaderMask'),
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
              child: ShaderMask(
                shaderCallback: (Rect bounds) {
                  return RadialGradient(
                    center: Alignment.topLeft,
                    radius: 1.0,
                    colors: <Color>[Colors.yellow, Colors.deepOrange],
                    tileMode: TileMode.mirror,
                  ).createShader(bounds);
                },
                blendMode: BlendMode.srcATop,
                child: Text(
                  '测试测试测试测试测试测试',
                  style: TextStyle(fontSize: 30),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
