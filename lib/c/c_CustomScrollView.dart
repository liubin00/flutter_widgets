import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CustomScrollView extends StatefulWidget {
  @override
  c_CustomScrollViewState createState() {
    return c_CustomScrollViewState();
  }
}

class c_CustomScrollViewState extends State<c_CustomScrollView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 230.0,
            flexibleSpace: FlexibleSpaceBar(
              title: Text('测试'),
              centerTitle: true,
              background: Image.asset(
                'img/zzz.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverGrid.count(
            crossAxisCount: 4,
            children: List.generate(
              8,
              (index) {
                return Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                  alignment: Alignment.center,
                  child: Text(
                    '$index',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  ),
                );
              },
            ).toList(),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(
                height: 85,
                alignment: Alignment.center,
                color: Colors.primaries[index % Colors.primaries.length],
                child: Text(
                  '$index',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              );
            }, childCount: 26),
          )
        ],
      ),
    );
  }
}
