import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_CupertinoActionSheet extends StatefulWidget {
  @override
  a_CupertinoActionSheetState createState() {
    return a_CupertinoActionSheetState();
  }
}

class a_CupertinoActionSheetState extends State<a_CupertinoActionSheet> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoActionSheet'),
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
            SizedBox(
              height: 400,
            ),
            RaisedButton(
              child: Text('CupertinoActionSheet'),
              onPressed: () {
                print('1');
                showCupertinoModalPopup(
                  context: context,
                  builder: (context) {
                    return CupertinoActionSheet(
                      title: Text('提示'),
                      message: Text('是否要删除当前项？'),
                      actions: <Widget>[
                        CupertinoActionSheetAction(
                          child: Text('删除'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDefaultAction: true,
                        ),
                        CupertinoActionSheetAction(
                          child: Text('暂时不删'),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          isDestructiveAction: true,
                        ),
                        CupertinoActionSheet(
                          cancelButton: CupertinoActionSheetAction(
                            child: Text('取消'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        )
                      ],
                    );
                  },
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
