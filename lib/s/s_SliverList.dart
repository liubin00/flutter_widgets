import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverList extends StatefulWidget {
  @override
  s_SliverListState createState() {
    return s_SliverListState();
  }
}

class s_SliverListState extends State<s_SliverList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverList'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 65,
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 5),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
            delegate:
                SliverChildBuilderDelegate((BuildContext context, int index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 21),
          )
        ],
      ),
    );
  }
}
