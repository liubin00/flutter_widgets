import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoContextMenu extends StatefulWidget {
  @override
  c_CupertinoContextMenuState createState() {
    return c_CupertinoContextMenuState();
  }
}

class c_CupertinoContextMenuState extends State<c_CupertinoContextMenu> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoContextMenu'),
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
            SizedBox(height: 400),
            CupertinoContextMenu(
              child: Container(
                alignment: Alignment.center,
                child: Text(
                  'CupertinoContextMenu',
                  style: TextStyle(
                      fontSize: 20,
                      decoration: TextDecoration.none,
                      color: Colors.white),
                ),
                color: Colors.red,
                height: 200,
                width: 400,
              ),
              actions: <Widget>[
                CupertinoContextMenuAction(
                  isDestructiveAction: true,
                  child: const Text('测试1'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                CupertinoContextMenuAction(
                  child: const Text('测试2'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
