import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AlertDialog extends StatefulWidget {
  @override
  a_AlertDialogState createState() {
    return a_AlertDialogState();
  }
}

class a_AlertDialogState extends State<a_AlertDialog> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AlertDialog'),
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
              child: RaisedButton(
                child: Text('Material风格1'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('删除'),
                          content: Text('确认删除吗？'),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('取消'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text('确认'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: RaisedButton(
                child: Text('Material风格2'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('提示'),
                          content: Text('确认删除吗？'),
                          backgroundColor: Colors.lightBlueAccent,
                          elevation: 24,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50)),
                          actions: <Widget>[
                            FlatButton(
                              child: Text('取消'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            ),
                            FlatButton(
                              child: Text('确认'),
                              onPressed: () {
                                Navigator.pop(context);
                              },
                            )
                          ],
                        );
                      });
                },
              ),
            ),            SizedBox(
              height: 50,
            ),
            Container(
              child: RaisedButton(
                child: Text('ios风格'),
                onPressed: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return CupertinoAlertDialog(
                        title: Text('提示'),
                        content: Text('确认删除吗?'),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            child: Text('取消'),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CupertinoDialogAction(
                            child: Text("确定"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
            ),            SizedBox(
              height: 50,
            ),
            Container(
              child: RaisedButton(
                child: Text('简单风格'),
                onPressed: () {
                  showDialog(
                      context: context,
                      builder: (context) {
                        return SimpleDialog(
                          title: Text('提示'),
                          children: <Widget>[
                            Container(
                              height: 70,
                              alignment: Alignment.center,
                              child: Text('确认删除吗?'),
                            ),
                            Divider(
                              height: 1,
                            ),
                            FlatButton(
                              child: Text('确定'),
                              onPressed: () {
                                Navigator.of(context).pop('cancel');
                              },
                            ),
                            Divider(
                              height: 1,
                            ),
                            FlatButton(
                              child: Text('取消'),
                              onPressed: () {
                                Navigator.of(context).pop('ok');
                              },
                            )
                          ],
                        );
                      });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
