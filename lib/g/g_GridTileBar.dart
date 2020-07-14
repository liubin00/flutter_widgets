import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GridTileBar extends StatefulWidget {
  @override
  g_GridTileBarState createState() {
    return g_GridTileBarState();
  }
}

class g_GridTileBarState extends State<g_GridTileBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GridTileBar'),
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
              width: 400,
              height: 400,
              child: GridTile(
                header: GridTileBar(
                  title: Text('测试1'),
                  subtitle: Text('测试2'),
                  backgroundColor: Colors.blue,
                  leading: Icon(Icons.rotate_right),
                  trailing: Icon(Icons.details),
                ),
                child: Container(
                  color: Colors.blueGrey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
