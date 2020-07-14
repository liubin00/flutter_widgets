import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RefreshIndicator extends StatefulWidget {
  @override
  r_RefreshIndicatorState createState() {
    return r_RefreshIndicatorState();
  }
}

class r_RefreshIndicatorState extends State<r_RefreshIndicator> {
  var _list = [1, 2, 3, 4, 5, 6];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshIndicator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: RefreshIndicator(
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
            itemCount: _list.length,
            itemExtent: 50,
          ),
        ),
      ),
    );
  }
}
