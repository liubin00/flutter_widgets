import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FlexibleSpaceBar extends StatefulWidget {
  @override
  f_FlexibleSpaceBarState createState() {
    return f_FlexibleSpaceBarState();
  }
}

class f_FlexibleSpaceBarState extends State<f_FlexibleSpaceBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 200.0,
            stretch: true,
            stretchTriggerOffset: 100,
            onStretchTrigger: () {},
            flexibleSpace: FlexibleSpaceBar(
              stretchModes: [StretchMode.zoomBackground],
              centerTitle: true,
              title: Text('测试'),
              background: Image.asset(
                'img/zzz.jpg',
                fit: BoxFit.cover,
              ),
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
