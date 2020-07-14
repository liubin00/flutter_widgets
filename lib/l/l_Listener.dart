import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_Listener extends StatefulWidget {
  @override
  l_ListenerState createState() {
    return l_ListenerState();
  }
}

class l_ListenerState extends State<l_Listener> {
  var text = 'Listener';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Listener'),
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
            Listener(
              onPointerDown: (PointerDownEvent pointerDownEvent) {
                setState(() {
                  text = 'PointerDownEvent';
                });
              },
              onPointerMove: (PointerMoveEvent pointerMoveEvent) {
                text = 'pointerMoveEvent';
              },
              onPointerUp: (PointerUpEvent upEvent) {
                text = 'upEvent';
              },
              child: Container(
                height: 200,
                width: 200,
                color: Colors.blue,
                alignment: Alignment.center,
              ),
            ),
            Text('$text')
          ],
        ),
      ),
    );
  }
}
