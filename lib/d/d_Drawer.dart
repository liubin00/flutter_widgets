import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_Drawer extends StatefulWidget {
  @override
  d_DrawerState createState() {
    return d_DrawerState();
  }
}

class d_DrawerState extends State<d_Drawer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('<------Drawe------>'),
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text('返回上一层界面'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}
