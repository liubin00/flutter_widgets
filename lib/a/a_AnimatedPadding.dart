import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedPadding extends StatefulWidget {
  @override
  a_AnimatedPaddingState createState() {
    return a_AnimatedPaddingState();
  }
}

class a_AnimatedPaddingState extends State<a_AnimatedPadding> {
  var _padding = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedPadding'),
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
              width: 200,
              height: 200,
              child: AnimatedPadding(
                curve: Curves.easeIn,
                padding: EdgeInsets.symmetric(horizontal: _padding),
                duration: Duration(seconds: 2),
                child: Container(
                  color: Colors.red,
                ),
              ),
            ),
            RaisedButton(
              child: Text('切换'),
              onPressed: () {
                setState(() {
                  if (_padding == 0.0) {
                    _padding = 50;
                  } else {
                    _padding = 0.0;
                  }
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
