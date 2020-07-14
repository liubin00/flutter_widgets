import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AlignTransition extends StatefulWidget {
  @override
  a_AlignTransitionState createState() {
    return a_AlignTransitionState();
  }
}

class a_AlignTransitionState extends State<a_AlignTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  AnimationController _animationController2;
  Animation _animation2;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    _animation = Tween<AlignmentGeometry>(
            begin: Alignment.topLeft, end: Alignment.bottomRight)
        .animate(_animationController);

    //start animation
    _animationController.forward();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlignTranstition'),
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
          color: Colors.black,
          child: AlignTransition(
            alignment: _animation,
            child: Container(
              width: 30,
              height: 30,
              color: Colors.lightBlue,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _animationController.dispose();
    // TODO: implement dispose
    super.dispose();
  }
}
