import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverFixedExtentList extends StatefulWidget {
  @override
  s_SliverFixedExtentListState createState() {
    return s_SliverFixedExtentListState();
  }
}

class s_SliverFixedExtentListState extends State<s_SliverFixedExtentList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverFixedExtentList'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFixedExtentList(
            itemExtent: 100,
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
