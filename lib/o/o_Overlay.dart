import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class o_Overlay extends StatefulWidget {
  @override
  o_OverlayState createState() {
    return o_OverlayState();
  }
}

class o_OverlayState extends State<o_Overlay> {
  bool _show = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Overlay'),
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
              child: Text('点击显示底部浮窗'),
              onPressed: () {
                if (_show) {
                  _showOverlay();
                  setState(() {
                    _show = !_show;
                  });
                } else {
                  _unshowOverlay();
                }
              },
            )
          ],
        ),
      ),
    );
  }

  _showOverlay() {
    var overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue.withOpacity(0.4),
        ),
      );
    });
    overlayState.insert(overlayEntry);
  }

  _unshowOverlay() {
    var overlayState = Overlay.of(context);
    OverlayEntry overlayEntry = OverlayEntry(builder: (context) {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 200,
          width: 200,
          color: Colors.blue.withOpacity(0.4),
        ),
      );
    });
    overlayState.dispose();
  }
}
