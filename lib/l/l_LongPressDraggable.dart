import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_LongPressDraggable extends StatefulWidget {
  @override
  l_LongPressDraggableState createState() {
    return l_LongPressDraggableState();
  }
}

class l_LongPressDraggableState extends State<l_LongPressDraggable> {
  var _dragData;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LongPressDraggable'),
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
                Text('拖动测试1'),
                Draggable(
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '测试1',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '测试2',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Draggable(
                  childWhenDragging: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '测试3',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  child: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '测试4',
                      style: TextStyle(color: Colors.white, fontSize: 24),
                    ),
                  ),
                  feedback: Container(
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Text(
                      '测试5',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          decoration: TextDecoration.none),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text('将测试6拖动至下方边框中'),
                Divider(
                  height: 20,
                ),
                Center(
                  child: Column(
                    children: <Widget>[
                      _build(),
                      SizedBox(
                        height: 200,
                      ),
                      DragTarget<Color>(
                        builder: (BuildContext context, List<Color> candidateData,
                            List<dynamic> rejectedData) {
                          print(
                              'candidateData:$candidateData,rejectedData:$rejectedData');
                          return _dragData == null
                              ? Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border: Border.all(color: Colors.red)),
                          )
                              : Container(
                            height: 100,
                            width: 100,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(10)),
                            child: Text(
                              '测试8',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 24),
                            ),
                          );
                        },
                        onWillAccept: (Color color) {
                          print('onWillAccept:$color');
                          return true;
                        },
                        onAccept: (Color color) {
                          setState(() {
                            _dragData = color;
                          });
                          print('onAccept:$color');
                        },
                        onLeave: (color) {
                          print('onLeave:$color');
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  _build() {
    return Draggable(
      data: Color(0x000000FF),
      child: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.red, borderRadius: BorderRadius.circular(10)),
        child: Text(
          '测试6',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      feedback: Container(
        height: 100,
        width: 100,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: Colors.blue, borderRadius: BorderRadius.circular(10)),
        child: DefaultTextStyle.merge(
          style: TextStyle(
              color: Colors.white,
              fontSize: 18,
              decoration: TextDecoration.none),
          child: Text(
            '测试7',
          ),
        ),
      ),
    );
  }
}
