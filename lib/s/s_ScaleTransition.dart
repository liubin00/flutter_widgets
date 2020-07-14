import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_ScaleTransition extends StatefulWidget {
  @override
  s_ScaleTransitionState createState() {
    return s_ScaleTransitionState();
  }
}

class s_ScaleTransitionState extends State<s_ScaleTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween(begin: .5, end: .1).animate(_animationController);

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
        title: Text('ScaleTransition'),
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
            SizedBox(
              height: 200,
            ),
            Container(
              child: ScaleTransition(
                scale: _animation,
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
