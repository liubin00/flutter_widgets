import 'package:flutter/material.dart';

class a_AboutDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutDialog"),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: RaisedButton(
          child: Text('获取当前App信息'),
          onPressed: () {
            showAboutDialog(
              context: context,
              applicationIcon: Image.asset(
                'img/1.jpg',
                height: 100,
                width: 100,
              ),
              applicationName: '应用程序',
              applicationVersion: '1.0.0',
              applicationLegalese: 'AboutDialog使用方法',
            );
          },
        ),
      ),
    );
  }
}
