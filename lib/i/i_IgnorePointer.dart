import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_IgnorePointer extends StatefulWidget {
  @override
  i_IgnorePointerState createState() {
    return i_IgnorePointerState();
  }
}

class i_IgnorePointerState extends State<i_IgnorePointer> {
  bool _button = false;
  bool _button1                                                       = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('IgnorePointer'),
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
            AbsorbPointer(
              absorbing: _button,
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            RaisedButton(
              child: _button == false ? Text('禁用') : Text('启用'),
              onPressed: () {
                setState(() {
                  _button = !_button;
                });
              },
            ),
            IgnorePointer(
              ignoring: _button1,
              child: Row(
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  ),
                  RaisedButton(
                    onPressed: () {},
                  )
                ],
              ),
            ),
            RaisedButton(
              child: _button1 == false ? Text('禁用') : Text('启用'),
              onPressed: () {
                setState(() {
                  _button1 = !_button1;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
