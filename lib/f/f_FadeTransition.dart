import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FadeTransition extends StatefulWidget {
  @override
  f_FadeTransitionState createState() {
    return f_FadeTransitionState();
  }
}

class f_FadeTransitionState extends State<f_FadeTransition>
    with SingleTickerProviderStateMixin {
  Animation<double> _animation;
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 5))
          ..repeat();
    _animation = Tween(begin: 0.0, end: 1.0).animate(_animationController);
    _animationController.forward();
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
        title: Text('FadeTranstition'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: FadeTransition(
          opacity: _animation,
          child: Container(
            color: Colors.red,
            width: 100,
            height: 100,
          ),
        ),
      ),
    );
  }
}
