import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/main.dart';

class b_BottomNavigationBar extends StatefulWidget {
  @override
  b_BottomNavigationBarState createState() {
    return b_BottomNavigationBarState();
  }
}

class onepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
    );
  }
}

class twopage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
    );
  }
}

class threepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.pink,
    );
  }
}

class b_BottomNavigationBarState extends State<b_BottomNavigationBar> {
  int _index = 0;

  Widget _body = onepage();

  _onTap(int index) {
    switch (index) {
      case 0:
        _body = onepage();
        break;
      case 1:
        _body = twopage();
        break;
      case 2:
        _body = threepage();
        break;
    }
    setState(() {
      _index = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BottomNavigationBar'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: _onTap,
        currentIndex: _index,
        type: BottomNavigationBarType.shifting,
        selectedItemColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.black,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              title: Text('测试1'), icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(title: Text('测试2'), icon: Icon(Icons.shop)),
          BottomNavigationBarItem(
              title: Text('测试3'), icon: Icon(Icons.settings))
        ],
      ),
      body: _body,
    );
  }
}
