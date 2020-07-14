import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoNavigationBar extends StatefulWidget {
  @override
  c_CupertinoNavigationBarState createState() {
    return c_CupertinoNavigationBarState();
  }
}

class c_CupertinoNavigationBarState extends State<c_CupertinoNavigationBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoNavigationBar'),
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
            Center(
              child: RaisedButton(
                child: Text('next page'),
                onPressed: () {
                  Navigator.of(context).push(
                    CupertinoPageRoute(
                      builder: (context) {
                        return SecondPage();
                      },
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        previousPageTitle: '返回',
        middle: Text('测试'),
      ),
      child: Center(
        child: RaisedButton(
          child: Text('to CupertinoNavigationBar'),
          onPressed: () {
            Navigator.of(context).push(CupertinoPageRoute(builder: (context) {
              return c_CupertinoNavigationBar();
            }));
          },
        ),
      ),
    );
  }
}
