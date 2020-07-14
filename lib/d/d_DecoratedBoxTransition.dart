import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DecoratedBoxTransition extends StatefulWidget {
  @override
  d_DecoratedBoxTransitionState createState() {
    return d_DecoratedBoxTransitionState();
  }
}

class d_DecoratedBoxTransitionState extends State<d_DecoratedBoxTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  var colorb = Colors.blue;
  var colorr = Colors.red;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DecoratedBoxTransition'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: DecoratedBoxTransition(
          decoration: _animation,
          child: Container(
            height: 200,
            width: 200,
          ),
        ),
      ),
    );
  }

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    _animation = DecorationTween(
        begin: BoxDecoration(
          color: colorb,
          borderRadius: BorderRadius.circular(12),
        ),
        end: BoxDecoration(
          color: colorr,
          borderRadius: BorderRadius.circular(60),
        )).animate(_animationController);

    //start animation
    _animationController.forward();
    super.initState();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }
}
