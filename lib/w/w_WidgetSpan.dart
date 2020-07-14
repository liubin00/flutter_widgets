import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class w_WidgetSpan extends StatefulWidget {
  @override
  w_WidgetSpanState createState() {
    return w_WidgetSpanState();
  }
}

class w_WidgetSpanState extends State<w_WidgetSpan> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('WidgetSpan'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Text.rich(TextSpan(children: <InlineSpan>[
            TextSpan(text: '测试测试11'),
            WidgetSpan(
              child: SizedBox(
                width: 120,
                height: 50,
                child: Card(
                  child: Center(
                    child: Text('测试测试22'),
                  ),
                ),
              ),
            ),
            TextSpan(text: '测试测试33')
          ])),
        ),
      ),
    );
  }
}
