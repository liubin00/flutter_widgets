import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class o_Opacity extends StatefulWidget {
  @override
  o_OpacityState createState() {
    return o_OpacityState();
  }
}

class o_OpacityState extends State<o_Opacity> {
  bool _click = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Opacity'),
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
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      '测试1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.green,
                    alignment: Alignment.center,
                    child: Text(
                      '测试2',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      '测试3',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Text('移除测试2，保留测试2的位置'),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.red,
                    alignment: Alignment.center,
                    child: Text(
                      '测试1',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Opacity(
                    opacity: 0.0,
                    child: Container(
                      height: 80,
                      width: 80,
                      color: Colors.green,
                      alignment: Alignment.center,
                      child: Text(
                        '测试2',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  Container(
                    height: 80,
                    width: 80,
                    color: Colors.blue,
                    alignment: Alignment.center,
                    child: Text(
                      '测试3',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset('img/1.jpg'),
                  Positioned.fill(
                      child: Opacity(
                    opacity: 0.5,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.white, Colors.blue],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: Stack(
                children: <Widget>[
                  Image.asset('img/1.jpg'),
                  Positioned.fill(
                      child: AnimatedOpacity(
                    onEnd: () {
                      setState(() {
                        _click = !_click;
                      });
                    },
                    duration: Duration(seconds: 3),
                    opacity: _click ? 0.2 : 0.8,
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Colors.white, Colors.grey],
                        ),
                      ),
                    ),
                  ))
                ],
              ),
            ),
            RaisedButton(
              child: Text(_click ? '淡出' : '淡入'),
              onPressed: () {
                setState(() {
                  _click = !_click;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}
