import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverPersitentHeader extends StatefulWidget {
  @override
  s_SliverPersitentHeaderState createState() {
    return s_SliverPersitentHeaderState();
  }
}

class s_SliverPersitentHeaderState extends State<s_SliverPersitentHeader> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverPersistentHeader'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverPersistentHeader(
            delegate: MySliverPersistentHeaderDelegate(),
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

class MySliverPersistentHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        '测试',
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 200.0;

  @override
  // TODO: implement minExtent
  double get minExtent => 100.0;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) => false;
}
