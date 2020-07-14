import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SnackBar extends StatefulWidget {
  @override
  s_SnackBarState createState() {
    return s_SnackBarState();
  }
}

class s_SnackBarState extends State<s_SnackBar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Builder(
        builder: (BuildContext context) {
          return Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                RaisedButton(
                  child: Text('测试1'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100)),
                        content: Text('测试'),
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text('测试2'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        content: Row(
                          children: <Widget>[
                            Icon(
                              Icons.check,
                              color: Colors.green,
                            ),
                            Text('下载成功')
                          ],
                        ),
                        duration: Duration(seconds: 1),
                        behavior: SnackBarBehavior.floating,
                      ),
                    );
                  },
                ),
                RaisedButton(
                  child: Text('测试3'),
                  onPressed: () {
                    Scaffold.of(context).showSnackBar(
                      SnackBar(
                        action: SnackBarAction(
                          label: '确定',
                          onPressed: () {
                            print('确定');
                          },
                        ),
                        content: Text('测试测试测试'),
                      ),
                    );
                  },
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
