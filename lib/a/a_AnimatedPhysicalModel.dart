import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedPhysicalModel extends StatefulWidget {
  @override
  a_AnimatedPhysicalModelState createState() {
    return a_AnimatedPhysicalModelState();
  }
}

class a_AnimatedPhysicalModelState extends State<a_AnimatedPhysicalModel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPhysicalModel'),
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
            _buildAnimatedPhysicalModel(),
            RaisedButton(
              child: Text('开始'),
              onPressed: () {
                setState(() {
                  _animated = !_animated;
                });
              },
            )
          ],
        ),
      ),
    );
  }

  bool _animated = false;

  _buildAnimatedPhysicalModel() {
    return AnimatedPhysicalModel(
      borderRadius: BorderRadius.circular(_animated ? 20 : 10),
      shape: BoxShape.rectangle,
      color: _animated ? Colors.blue : Colors.red,
      elevation: _animated ? 18 : 8,
      shadowColor: !_animated ? Colors.blue : Colors.red,
      child: Container(
        height: 100,
        width: 100,
      ),
      duration: Duration(seconds: 2),
    );
  }
}
