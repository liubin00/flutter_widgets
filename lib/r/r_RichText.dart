import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class r_RichText extends StatefulWidget {
  @override
  r_RichTextState createState() {
    return r_RichTextState();
  }
}

class r_RichTextState extends State<r_RichText> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RichText'),
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
              child: RichText(
                text: TextSpan(
                    style: DefaultTextStyle.of(context).style,
                    children: <InlineSpan>[
                      TextSpan(
                          text: '测试1', style: TextStyle(color: Colors.red)),
                      TextSpan(text: ','),
                      TextSpan(text: '测试2'),
                    ]),
              ),
            ),
            RichText(
              text: TextSpan(
                  style: DefaultTextStyle.of(context).style,
                  children: <InlineSpan>[
                    TextSpan(text: '登录即视为同意'),
                    TextSpan(
                        text: '《xxx服务协议》',
                        style: TextStyle(color: Colors.red),
                        recognizer: TapGestureRecognizer()..onTap = () {})
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}
