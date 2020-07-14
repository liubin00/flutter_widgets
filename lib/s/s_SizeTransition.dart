import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SizeTransition extends StatefulWidget {
  @override
  s_SizeTransitionState createState() {
    return s_SizeTransitionState();
  }
}

class s_SizeTransitionState extends State<s_SizeTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 3), vsync: this);
    _animation = Tween(begin: 0.1, end: 1.5).animate(_animationController);

    //start animation
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
        title: Text('SizeTransition'),
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
            height: 200,
            child: SizeTransition(
              sizeFactor: _animation,
              axis: Axis.horizontal,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
