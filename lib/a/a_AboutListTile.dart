import 'package:flutter/material.dart';

class a_AboutListTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AboutListTile"),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: AboutListTile(
          icon: Image.asset('img/2.jpg'),
          child: Text('AboutListTile使用方'),
          applicationName: "AppName",
          applicationIcon: Image.asset('img/1.jpg'),
          applicationLegalese: '测试文本',
          aboutBoxChildren: [
            RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(text: '测试文本1'),
                  TextSpan(text: '测试文本2'),
                  TextSpan(text: '测试文本3')
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
