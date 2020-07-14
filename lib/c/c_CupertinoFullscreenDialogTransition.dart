import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoFullscreenDialogTransition extends StatefulWidget {
  @override
  c_CupertinoFullscreenDialogTransitionState createState() {
    return c_CupertinoFullscreenDialogTransitionState();
  }
}

class c_CupertinoFullscreenDialogTransitionState
    extends State<c_CupertinoFullscreenDialogTransition>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;

  @override
  void initState() {
    _animationController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoFullscreenDialogTransition'),
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
            Expanded(
              child: Container(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                RaisedButton(
                  child: Text('Forward'),
                  onPressed: () {
                    _animationController.forward();
                  },
                ),
                RaisedButton(
                  child: Text('Reverse'),
                  onPressed: () {
                    _animationController.reverse();
                  },
                ),
              ],
            ),
//            CupertinoFullscreenDialogTransition(
//              primaryRouteAnimation: _animationController,
//              secondaryRouteAnimation: _animationController,
//              child: Container(
//                height: 300,
//                color: Colors.blueGrey,
//              ),
//            )
          ],
        ),
      ),
    );
  }
}
