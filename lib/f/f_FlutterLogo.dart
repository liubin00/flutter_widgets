import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FlutterLogo extends StatefulWidget {
  @override
  f_FlutterLogoState createState() {
    return f_FlutterLogoState();
  }
}

class f_FlutterLogoState extends State<f_FlutterLogo> {
  var _style = FlutterLogoStyle.horizontal;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FlutterLogo'),
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
            FlutterLogo(
              size: 160,
              colors: Colors.red,
              style: _style,
              textColor: Colors.blue,
              duration: Duration(seconds: 2),
              curve: Curves.linear,
            ),
            RaisedButton(
              child: Text('FlutterLogo'),
              onPressed: () {
                setState(
                  () {
                    if (_style == FlutterLogoStyle.horizontal) {
                      _style = FlutterLogoStyle.stacked;
                    } else {
                      _style == FlutterLogoStyle.horizontal;
                    }
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
