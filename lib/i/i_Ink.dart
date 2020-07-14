import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class i_Ink extends StatefulWidget {
  @override
  i_InkState createState() {
    return i_InkState();
  }
}

class i_InkState extends State<i_Ink> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Ink'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Ink(
          decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.red, Colors.blue]),
            borderRadius: BorderRadius.all(
              Radius.circular(20),
            ),
          ),
          child: InkWell(
            borderRadius: BorderRadius.all(Radius.circular(20)),
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 20),
              child: Text(
                'InkWell and Ink',
                style: TextStyle(color: Colors.white),
              ),
            ),
            onTap: () {},
          ),
        ),
      ),
    );
  }
}
