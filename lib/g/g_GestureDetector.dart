import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GestureDetector extends StatefulWidget {
  @override
  g_GestureDetectorState createState() {
    return g_GestureDetectorState();
  }
}

class g_GestureDetectorState extends State<g_GestureDetector> {
  var _text = 'GestureDetector';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GrestureDetector'),
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
            GestureDetector(
              //按下时回调
              onTapDown: (TapDownDetails tapDownDetails) {
                setState(() {
                  _text = '按下时回调';
                });
              },
              //抬起时回调
              onTapUp: (TapUpDetails tapUpDetails) {
                setState(() {
                  _text = '抬起时回调';
                });
              },
              //点击事件回调
              onTap: () {
                setState(() {
                  _text = '点击事件回调';
                });
              },
              //点击取消事件回调
              onTapCancel: () {
                setState(() {
                  _text = '点击取消事件回调';
                });
              },
              //双击事件
              onDoubleTap: () {
                setState(() {
                  _text = '双击事件';
                });
              },
              //长按开始事件回调
              onLongPressStart: (v) {
                setState(() {
                  _text = '长按开始事件回调';
                });
              },
              //长按移动事件回调
              onLongPressMoveUpdate: (v) {
                setState(() {
                  _text = '长按移动事件回调';
                });
              },
              //长按抬起事件回调
              onLongPressUp: () {
                setState(() {
                  _text = '长按抬起事件回调';
                });
              },
              //长按结束事件回调
              onLongPressEnd: (v) {
                setState(() {
                  _text = '长按结束事件回调';
                });
              },
              //长按事件回调
              onLongPress: () {
                setState(() {
                  _text = '长按事件回调';
                });
              },
              //垂直拖动按下事件回调
              onVerticalDragDown: (v) {
                setState(() {
                  _text = '垂直拖动按下事件回调';
                });
              },
              //垂直拖动开始事件回调
              onVerticalDragStart: (v) {
                setState(() {
                  _text = '垂直拖动开始事件回调';
                });
              },
              //指针移动事件更新事件回调
              onVerticalDragUpdate: (v) {
                setState(() {
                  _text = '指针移动事件更新事件回调';
                });
              },
              //垂直拖动结束事件回调
              onVerticalDragEnd: (v) {
                setState(() {
                  _text = '垂直拖动结束事件回调';
                });
              },
              child: Center(
                child: Container(
                  width: 200,
                  height: 200,
                  color: Colors.blue,
                ),
              ),
            ),
            Text('$_text'),
          ],
        ),
      ),
    );
  }
}
