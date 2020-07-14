import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedModalBarrier extends StatefulWidget {
  @override
  a_AnimatedModalBarrierState createState() {
    return a_AnimatedModalBarrierState();
  }
}

class a_AnimatedModalBarrierState extends State<a_AnimatedModalBarrier>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = ColorTween(begin: Colors.redAccent, end: Colors.blueAccent)
        .animate(_animationController);
    //start animation
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('a_AnimatedModalBarrier'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Container(
          height: 200,
          width: 200,
          child: AnimatedModalBarrier(
            color: _animation,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
