import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverPrototypeExtentList extends StatefulWidget {
  @override
  s_SliverPrototypeExtentListState createState() {
    return s_SliverPrototypeExtentListState();
  }
}

class s_SliverPrototypeExtentListState
    extends State<s_SliverPrototypeExtentList> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverPrototypeExtentList'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPrototypeExtentList(
            prototypeItem: Text(
              '测试',
              style: TextStyle(fontSize: 28),
            ),
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
