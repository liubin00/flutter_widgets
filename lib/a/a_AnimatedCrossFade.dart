import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedCrossFade extends StatefulWidget {
  @override
  a_AnimatedCrossFadeState createState() {
    return a_AnimatedCrossFadeState();
  }
}

class a_AnimatedCrossFadeState extends State<a_AnimatedCrossFade> {
  bool _showFirst = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedCrossFade'),
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
            AnimatedCrossFade(
              duration: Duration(seconds: 1),
              crossFadeState: _showFirst
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              firstChild: Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
                child: Text(
                  'first child',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              secondChild: Container(
                height: 150,
                width: 150,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(20)),
                child: Text(
                  'second child',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            RaisedButton(
              child: Text("切换"),
              onPressed: () {
                setState(
                  () {
                    _showFirst = !_showFirst;
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
