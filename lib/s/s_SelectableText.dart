import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SelectableText extends StatefulWidget {
  @override
  s_SelectableTextState createState() {
    return s_SelectableTextState();
  }
}

class s_SelectableTextState extends State<s_SelectableText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SelectableText'),
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
              height: 300,
            ),
            Container(
              child: SelectableText(
                '测试测试测试测试测试',
                showCursor: true,
                autofocus: true,
                cursorColor: Colors.red,
                cursorRadius: Radius.circular(10),
                cursorWidth: 5,
                toolbarOptions: ToolbarOptions(copy: true, selectAll: true),
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
