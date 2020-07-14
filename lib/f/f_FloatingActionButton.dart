import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FloatingActionButton extends StatefulWidget {
  @override
  f_FloatingActionButtonState createState() {
    return f_FloatingActionButtonState();
  }
}

class f_FloatingActionButtonState extends State<f_FloatingActionButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FloatingActionButton'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(                    onPressed: (){},),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('测试1')),
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('测试2')),
        ],
      ),
    );
  }
}
