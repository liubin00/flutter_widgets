import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PopupMenuButton extends StatefulWidget {
  @override
  p_PopupMenuButtonState createState() {
    return p_PopupMenuButtonState();
  }
}

class p_PopupMenuButtonState extends State<p_PopupMenuButton> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PopupMenuButton'),
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
              height: 60,
            ),
            Container(
              child: PopupMenuButton<String>(
                tooltip: '长按时弹出',
                initialValue: '语文',
                itemBuilder: (context) {
                  return <PopupMenuEntry<String>>[
                    PopupMenuItem<String>(
                      value: '语文',
                      child: Text('语文'),
                    ),
                    PopupMenuItem<String>(
                      value: '数学',
                      child: Text('数学'),
                    ),
                    PopupMenuItem<String>(
                      value: '英语',
                      child: Text('英语'),
                    ),
                    PopupMenuItem<String>(
                      value: '生物',
                      child: Text('生物'),
                    ),
                    PopupMenuItem<String>(
                      value: '化学',
                      child: Text('化学'),
                    )
                  ];
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
