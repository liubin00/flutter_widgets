import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverProtoTypeExtentList extends StatefulWidget {
  @override
  s_SliverProtoTypeExtentListState createState() {
    return s_SliverProtoTypeExtentListState();
  }
}

class s_SliverProtoTypeExtentListState
    extends State<s_SliverProtoTypeExtentList> {
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
          SliverToBoxAdapter(
            child: Container(
              height: 100,
              color: Colors.black,
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 65,
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 50),
          )
        ],
      ),
    );
  }
}
