import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_Tab extends StatefulWidget {
  @override
  t_TabState createState() {
    return t_TabState();
  }
}

class t_TabState extends State<t_Tab> {
  TabController _tabController;

  final List<String> _list = [
    '测试1',
    '测试2',
    '测试3',
    '测试4',
    '测试5',
    '测试6',
  ];

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: _list.length,
      vsync: ScrollableState(),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TabBar'),
        bottom: TabBar(
          tabs: _list.map(
            (e) {
              return Text(e);
            },
          ).toList(),
          controller: _tabController,
          indicatorWeight: 5.0,
          indicatorColor: Colors.blue,
          indicatorSize: TabBarIndicatorSize.tab,
          isScrollable: true,
          labelColor: Colors.black,
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: _list.map(
          (e) {
            return Center(
              child: Text(e),
            );
          },
        ).toList(),
      ),
    );
  }
}
