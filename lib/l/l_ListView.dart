import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_ListView extends StatefulWidget {
  @override
  l_ListViewState createState() {
    return l_ListViewState();
  }
}

class l_ListViewState extends State<l_ListView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListView'),
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
            Text('静态创建'),
            Container(
              width: 400,
              height: 200,
              child: ListView(
                children: <Widget>[
                  Text('测试1'),
                  Text('测试2'),
                  Text('测试3'),
                ],
              ),
            ),
            Text('动态创建'),
            Container(
              width: 400,
              height: 400,
              child: ListView.builder(
                itemBuilder: (BuildContext context, int index) {
                  return Text('测试${index + 1}');
                },
                itemExtent: 50,
                itemCount: 4,
              ),
            ),
            Text('动态创建'),
            Container(
              width: 400,
              height: 200,
              child: ListView.separated(
                itemBuilder: (BuildContext context, int index) {
                  return Text('测试${index + 1}');
                },
                separatorBuilder: (BuildContext context, int index) {
                  return Divider();
                },
                itemCount: 4,
              ),
            )
          ],
        ),
      ),
    );
  }
}
