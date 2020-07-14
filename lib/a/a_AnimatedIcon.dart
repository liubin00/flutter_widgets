import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedIcon extends StatefulWidget {
  @override
  a_AnimatedIconState createState() {
    return a_AnimatedIconState();
  }
}

class a_AnimatedIconState extends State<a_AnimatedIcon>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: Duration(seconds: 1), vsync: this)
          ..addStatusListener((AnimationStatus status) {
            if (status == AnimationStatus.completed) {
              _animationController.reverse();
            } else if (status == AnimationStatus.dismissed) {
              _animationController.forward();
            }
          });
    _animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('a_AnimatedIcon'),
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
          height: 100,
          width: 100,
          alignment: Alignment.center,
          child: AnimatedIcon(
            icon: AnimatedIcons.add_event,
            progress: _animationController,
            size: 90,
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
