import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SafeArea extends StatefulWidget {
  @override
  s_SafeAreaState createState() {
    return s_SafeAreaState();
  }
}

class s_SafeAreaState extends State<s_SafeArea> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SafeArea'),
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
            Container(
              height: 400,
              child: SafeArea(
                child: ListView(
                  children: List.generate(100, (index) => Text('测试$index')),
                ),
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 400,
              child: CustomScrollView(
                slivers: <Widget>[
                  SliverGrid(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 5,
                        mainAxisSpacing: 3),
                    delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                      return Container(
                        color:
                            Colors.primaries[index % Colors.primaries.length],
                      );
                    }, childCount: 21),
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
