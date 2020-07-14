import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Scaffold extends StatefulWidget {
  @override
  s_ScaffoldState createState() {
    return s_ScaffoldState();
  }
}

class s_ScaffoldState extends State<s_Scaffold> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text('测试1'),
      ),
      bottomSheet: BottomSheet(
        onClosing: () {},
        backgroundColor: Colors.lightBlue,
        builder: (context) {
          return Container(
            height: 150,
            alignment: Alignment.center,
            child: Text('测试9'),
          );
        },
      ),
      persistentFooterButtons: <Widget>[
        FlatButton(
          onPressed: () {},
          child: Text('测试6'),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('测试7'),
        ),
        FlatButton(
          onPressed: () {},
          child: Text('测试8'),
        ),
      ],
      body: Center(
        child: Text('测试2'),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('测试3'), icon: Icon(Icons.delete)),
//          BottomNavigationBarItem(title: Text('测试4'), icon: Icon(Icons.code)),
          BottomNavigationBarItem(
              title: Text('测试5'), icon: Icon(Icons.pan_tool))
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(                    onPressed: (){},),
    );
  }
}
