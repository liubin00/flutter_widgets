import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoSliverRefreshControl extends StatefulWidget {
  @override
  c_CupertinoSliverRefreshControlState createState() {
    return c_CupertinoSliverRefreshControlState();
  }
}

class c_CupertinoSliverRefreshControlState
    extends State<c_CupertinoSliverRefreshControl> {
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
        title: Text('CupertinoSliverRefreshControl'),
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
              child: RefreshIndicator(
                displacement: 10,
                onRefresh: () async {
                  setState(() {
                    _list.add(_list.length + 1);
                  });
                },
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('测试${_list[index]}'),
                    );
                  },
                  itemExtent: 50,
                  itemCount: _list.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
