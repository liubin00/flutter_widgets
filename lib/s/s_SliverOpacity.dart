import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverOpacity extends StatefulWidget {
  @override
  s_SliverOpacityState createState() {
    return s_SliverOpacityState();
  }
}

class s_SliverOpacityState extends State<s_SliverOpacity> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverOpacity'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
//      body: SliverOpacity(
//        opacity: 0.5,
//        sliver: SliverList(
//          delegate: SliverChildBuilderDelegate((context, index) {
//            return Container(
//              height: 30,
//              color: Colors.primaries[index % Colors.primaries.length],
//            );
//          }, childCount: 50),
//        ),
//      ),
    );
  }
}
