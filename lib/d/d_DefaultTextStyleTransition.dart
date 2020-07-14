import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DefaultTextStyleTransition extends StatefulWidget {
  @override
  d_DefaultTextStyleTransitionState createState() {
    return d_DefaultTextStyleTransitionState();
  }
}

class d_DefaultTextStyleTransitionState
    extends State<d_DefaultTextStyleTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);

    _animation = TextStyleTween(
            begin: TextStyle(color: Colors.blue, fontSize: 14),
            end: TextStyle(color: Colors.red, fontSize: 50))
        .animate(_animationController);

    //开始动画
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DefaultTextStyleTransition'),
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
            DefaultTextStyleTransition(
              style: _animation,
              child: Text('测试'),
            )
          ],
        ),
      ),
    );
  }
}
