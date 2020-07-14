import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GridPager extends StatefulWidget {
  @override
  g_GridPagerState createState() {
    return g_GridPagerState();
  }
}

class g_GridPagerState extends State<g_GridPager> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GridPager'),
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
              height: 200,
              width: 200,
              child: GridPaper(
                color: Colors.red,
                divisions: 1,
                subdivisions: 1,
              ),
            )
          ],
        ),
      ),
    );
  }
}
