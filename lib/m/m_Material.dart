import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_Material extends StatefulWidget {
  @override
  m_MaterialState createState() {
    return m_MaterialState();
  }
}

class m_MaterialState extends State<m_Material> {
  double _radius = 0.0;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Material'),
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
            RaisedButton(
              onPressed: () {
                setState(() {
                  if (_color == Colors.blue) {
                    _radius = 30.0;
                    _color = Colors.red;
                  } else {
                    _radius = 0.0;
                    _color = Colors.blue;
                  }
                });
              },
            ),
            Material(
              borderRadius: BorderRadius.circular(_radius),
              shadowColor: _color,
              color: _color,
              animationDuration: Duration(seconds: 2),
              child: Container(
                height: 200,
                width: 200,
                alignment: Alignment.center,
                child: Text('测试'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
