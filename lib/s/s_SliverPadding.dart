import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverPadding extends StatefulWidget {
  @override
  s_SliverPaddingState createState() {
    return s_SliverPaddingState();
  }
}

class s_SliverPaddingState extends State<s_SliverPadding> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverPadding'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((cnotext, index) {
                        return Container(
                          height: 65,
                          color:
                              Colors.primaries[index % Colors.primaries.length],
                        );
                      }, childCount: 50),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverAppBar(
                    pinned: true,
                  ),
//                  SliverPadding(
//                    padding: EdgeInsets.symmetric(horizontal: 10),
//                    sliver: SliverPersistentHeader(
//                      delegate: SliverChildBuilderDelegate((context, index) {
//                        return Container(
//                          height: 30,
//                          color:
//                              Colors.primaries[index % Colors.primaries.length],
//                        );
//                      }),
//                      pinned: true,
//                    ),
//                  ),
                  SliverPadding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    sliver: SliverList(
                      delegate: SliverChildBuilderDelegate((context, index) {
                        return Container(
                          height: 65,
                          color:
                              Colors.primaries[index % Colors.primaries.length],
                        );
                      }, childCount: 50),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
