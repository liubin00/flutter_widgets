import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class c_CupertinoTabView extends StatefulWidget {
  @override
  c_CupertinoTabViewState createState() {
    return c_CupertinoTabViewState();
  }
}

class c_CupertinoTabViewState extends State<c_CupertinoTabView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoTabBar'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), title: Text('tab1')),
            BottomNavigationBarItem(
                icon: Icon(Icons.home), title: Text('tab2')),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), title: Text('tab3')),
          ],
        ),
        tabBuilder: (context, index) {
          return CupertinoTabView(
            defaultTitle: '测试',
            builder: (context) {
              return Center(
                child: Text('$index'),
              );
            },
          );
        },
      ),
    );
  }
}
