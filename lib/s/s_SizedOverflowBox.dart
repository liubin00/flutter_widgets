import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SizedOverflowBox extends StatefulWidget {
  @override
  s_SizedOverflowBoxState createState() {
    return s_SizedOverflowBoxState();
  }
}

class s_SizedOverflowBoxState extends State<s_SizedOverflowBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SizedOverflowBox'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Container(
            color: Colors.grey,
            child: SizedOverflowBox(
              size: const Size(100.0, 100.0),
              alignment: AlignmentDirectional.bottomStart,
              child: Container(
                height: 50.0,
                width: 150.0,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
