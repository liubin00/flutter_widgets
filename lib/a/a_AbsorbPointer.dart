import 'package:flutter/material.dart';

class a_AbsorbPointer extends StatefulWidget {
  @override
  a_AbsorPointerState createState() {
    return a_AbsorPointerState();
  }
}

class a_AbsorPointerState extends State<a_AbsorbPointer> {
  var _text = 'AbsorbPointer禁止用户输入';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_text),
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
          height: 200,
          width: 200,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              Listener(
                onPointerDown: (v) {
                  setState(() {
                    _text = 'click red';
                  });
                },
                child: Container(
                  color: Colors.red,
                ),
              ),
              Listener(
                onPointerDown: (v) {
                  setState(() {
                    _text = 'click blue';
                  });
                },
                child: AbsorbPointer(
                  child: Listener(
                    onPointerDown: (v) {
                      _text = 'click blue and red';
                    },
                    child: Container(
                      color: Colors.blue,
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
