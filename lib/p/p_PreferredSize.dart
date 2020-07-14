import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PreferredSize extends StatefulWidget {
  @override
  p_PreferredSizeState createState() {
    return p_PreferredSizeState();
  }
}

class p_PreferredSizeState extends State<p_PreferredSize> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(200),
        child: Container(
          height: 37,
          color: Colors.red,
        ),
      ),
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
