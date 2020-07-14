import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class n_NotificationListener extends StatefulWidget {
  @override
  n_NotificationListenerState createState() {
    return n_NotificationListenerState();
  }
}

class n_NotificationListenerState extends State<n_NotificationListener> {
  var _notification = '监听ListView的滚动事件';
  var _notification1 = '自定义监听事件';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NotificationListenerState'),
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
              child: Text('$_notification'),
            ),
            Container(
              height: 300,
              child: NotificationListener<ScrollNotification>(
                onNotification: (ScrollNotification notification) {
                  setState(() {
                    _notification = notification.toString();
                  });
                  return true;
                },
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text('测试$index'),
                    );
                  },
                  itemCount: 100,
                ),
              ),
            ),
            Container(
              child: Text('$_notification1'),
            ),
            Container(
              child: NotificationListener<CustomNotification>(
                onNotification: (CustomNotification notification) {
                  setState(() {
                    _notification1 = notification.toString();
                  });
                  return true;
                },
                child: Center(
                  child: Builder(
                    builder: (context) {
                      return RaisedButton(
                        child: Text('测试'),
                        onPressed: () {
                          CustomNotification('自定义事件').dispatch(context);
                        },
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomNotification extends Notification {
  final String value;

  CustomNotification(this.value);
}
