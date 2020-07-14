import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PositionedTransition extends StatefulWidget {
  @override
  p_PositionedTransitionState createState() {
    return p_PositionedTransitionState();
  }
}

class p_PositionedTransitionState extends State<p_PositionedTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = RelativeRectTween(
            begin: RelativeRect.fromLTRB(10.0, 10.0, 10.0, 10.0),
            end: RelativeRect.fromLTRB(100.0, 100.0, 100.0, 100.0))
        .animate(_animationController);

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
        title: Text('PositionedTransition'),
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
              height: 300,
              width: 300,
              color: Colors.blue,
              child: Stack(
                children: <Widget>[
                  PositionedTransition(
                    rect: _animation,
                    child: Container(
                      color: Colors.red,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
