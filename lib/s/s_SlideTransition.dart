import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SlideTransition extends StatefulWidget {
  @override
  s_SlideTransitionState createState() {
    return s_SlideTransitionState();
  }
}

class s_SlideTransitionState extends State<s_SlideTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: Offset(0.0, 0.0), end: Offset(1.0, 1.0))
        .animate(_animationController);

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
        title: Text('SlideTransition'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Container(
            color: Colors.green,
            height: 100,
            width: 100,
            child: SlideTransition(
              position: _animation,
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
