import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class o_OverflowBox extends StatefulWidget {
  @override
  o_OverflowBoxState createState() {
    return o_OverflowBoxState();
  }
}

class o_OverflowBoxState extends State<o_OverflowBox> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OverflowBox'),
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
            Text('红色为子组件,绿色为父组件'),
            Container(
              color: Colors.green,
              width: 200,
              height: 200,
              padding: const EdgeInsets.all(30.0),
              child: OverflowBox(
                alignment: Alignment.topLeft,
                maxWidth: 300,
                maxHeight: 500,
                child: Container(
                  color: Colors.pink,
                  width: 400,
                  height: 400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
