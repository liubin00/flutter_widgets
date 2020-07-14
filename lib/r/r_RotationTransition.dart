import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RotationTransition extends StatefulWidget {
  @override
  r_RotationTransitionState createState() {
    return r_RotationTransitionState();
  }
}

class r_RotationTransitionState extends State<r_RotationTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation _animation;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 5), vsync: this);
    _animation = Tween(begin: .0, end: .5).animate(_animationController);

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
        title: Text('RotationTransition'),
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
              height: 300,
            ),
            Container(
              child: RotationTransition(
                turns: _animation,
                child: Container(
                  height: 150,
                  width: 150,
                  color: Colors.blue,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
