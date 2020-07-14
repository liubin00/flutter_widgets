import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SingleChildScrollView extends StatefulWidget {
  @override
  s_SingleChildScrollViewState createState() {
    return s_SingleChildScrollViewState();
  }
}

class s_SingleChildScrollViewState extends State<s_SingleChildScrollView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SingleChildScrollView'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: SingleChildScrollView(
//          scrollDirection: Axis.horizontal,
          child: Column(
            children: List.generate(59, (index) {
              return Container(
                height: 150,
//                width: 150,
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }).toList(),
          ),
        ),
      ),
    );
  }
}
