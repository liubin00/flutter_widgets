import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverAppBar extends StatefulWidget {
  @override
  s_SliverAppBarState createState() {
    return s_SliverAppBarState();
  }
}

class s_SliverAppBarState extends State<s_SliverAppBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 350.0,
            flexibleSpace: FlexibleSpaceBar(
              centerTitle: true,
              title: Text('测试'),
              background: Image.asset(
                'img/zzz.jpg',
                fit: BoxFit.fitHeight,
              ),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 80.0,
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Card(
                child: Container(
                  alignment: Alignment.center,
                  color: Colors.primaries[(index % 18)],
                  child: Text(''),
                ),
              );
            }),
          )
        ],
      ),
    );
  }
}
