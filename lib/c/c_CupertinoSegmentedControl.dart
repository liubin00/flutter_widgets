import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoSegmentedControl extends StatefulWidget {
  @override
  c_CupertinoSegmentedControlState createState() {
    return c_CupertinoSegmentedControlState();
  }
}

class c_CupertinoSegmentedControlState
    extends State<c_CupertinoSegmentedControl> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSegmentedControl'),
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
            Container(
              child: CupertinoSegmentedControl(
                children: {
                  '语文': Container(
                    child: Text('语文'),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  ),
                  '数学': Container(
                    child: Text('数学'),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  ),
                  '英语': Container(
                    child: Text('英语'),
                    padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  )
                },
                onValueChanged: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
