import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class v_Visibility extends StatefulWidget {
  @override
  v_VisibilityState createState() {
    return v_VisibilityState();
  }
}

class v_VisibilityState extends State<v_Visibility> {
  bool _select = true;
  var _text = '隐藏';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Visibility'),
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
            RaisedButton(
              child: Text(_text),
              onPressed: () {
                setState(() {
                  _select = !_select;
                  if (_text == '隐藏') {
                    _text = '显示';
                  } else {
                    _text = '隐藏';
                  }
                });
              },
            ),
            Visibility(
              visible: _select,
              replacement: Container(
                height: 50,
                width: 50,
                color: Colors.red,
              ),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
