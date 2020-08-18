import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedSwitcher extends StatefulWidget {
  @override
  a_AnimatedSwitcherState createState() {
    return a_AnimatedSwitcherState();
  }
}

class a_AnimatedSwitcherState extends State<a_AnimatedSwitcher> {
  var _currChild = Container(
    key: ValueKey('1'),
    height: 300,
    width: 300,
    color: Colors.red,
  );

  var _currChild2 = Container(
    key: ValueKey('3'),
    height: 300,
    width: 300,
    color: Colors.red,
  );

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedSwitcher'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                AnimatedSwitcher(
                  duration: Duration(seconds: 2),
                  child: _currChild,
                ),
                RaisedButton(
                  child: Text('变换1'),
                  onPressed: () {
                    setState(() {
                      _currChild = Container(
                        key: ValueKey('2'),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      );
                    });
                  },
                ),
                AnimatedSwitcher(
                  duration: Duration(seconds: 1),
                  child: _currChild2,
                  transitionBuilder: (Widget child, Animation<double> value) {
                    return ScaleTransition(
                      child: child,
                      scale: value,
                    );
                  },
                ),
                RaisedButton(
                  child: Text('变换2'),
                  onPressed: () {
                    setState(() {
                      _currChild2 = Container(
                        key: ValueKey('4'),
                        height: 100,
                        width: 100,
                        color: Colors.blue,
                      );
                    });
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
