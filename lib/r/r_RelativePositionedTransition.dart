import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RelativePositionedTransition extends StatefulWidget {
  @override
  r_RelativePositionedTransitionState createState() {
    return r_RelativePositionedTransitionState();
  }
}

class r_RelativePositionedTransitionState
    extends State<r_RelativePositionedTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = RectTween(
            begin: Rect.fromLTRB(10.0, 10.0, 10.0, 10.0),
            end: Rect.fromLTRB(300.0, 300.0, 0.0, 0.0))
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
        title: Text('RelativePositionedTransition'),
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
          height: 300,
          width: 300,
          color: Colors.blue,
          child: Stack(
            children: <Widget>[
              RelativePositionedTransition(
                rect: _animation,
                size: Size(0.0, 0.0),
                child: Container(
                  color: Colors.red,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
