import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoSliverRefreshControl2 extends StatefulWidget {
  @override
  c_CupertinoSliverRefreshControl2State createState() {
    return c_CupertinoSliverRefreshControl2State();
  }
}

class c_CupertinoSliverRefreshControl2State
    extends State<c_CupertinoSliverRefreshControl2> {
  var _list = [];

  @override
  void initState() {
    for (int i = 0; i < 11; i++) {
      _list.add(i);
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSliverRefreshControl2'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Row(
          children: <Widget>[
            Expanded(
              child: CustomScrollView(
                slivers: <Widget>[
                  CupertinoSliverRefreshControl(
                    onRefresh: () async {
                      setState(() {
                        _list.add(_list.length + 1);
                      });
                    },
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate((content, index) {
                      return ListTile(
                        title: Text('老孟${_list[index]}'),
                      );
                    }, childCount: _list.length),
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
