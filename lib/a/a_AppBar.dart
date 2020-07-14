import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AppBar extends StatefulWidget {
  @override
  a_AppBarState createState() {
    return a_AppBarState();
  }
}

class a_AppBarState extends State<a_AppBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('AppBar'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {},
          )
        ],
        bottom: TabBar(
          tabs: <Widget>[
            Text('数学'),
            Text('语文'),
            Text('英语'),
            Text('体育'),
            Text('音乐')
          ],
          controller: TabController(length: 5, vsync: this),
        ),
      ),
    );
  }
}
