import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverFillViewport extends StatefulWidget {
  @override
  s_SliverFillViewportState createState() {
    return s_SliverFillViewportState();
  }
}

class s_SliverFillViewportState extends State<s_SliverFillViewport> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverFillViewport'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverFillViewport(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                color: Colors.primaries[index % Colors.primaries.length],
              );
            }, childCount: 4),
            viewportFraction: 1.0,
          )
        ],
      ),
    );
  }
}
