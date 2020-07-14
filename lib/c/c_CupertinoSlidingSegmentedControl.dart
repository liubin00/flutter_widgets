import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CupertinoSlidingSegmentedControl extends StatefulWidget {
  @override
  c_CupertinoSlidingSegmentedControlState createState() {
    return c_CupertinoSlidingSegmentedControlState();
  }
}

class c_CupertinoSlidingSegmentedControlState
    extends State<c_CupertinoSlidingSegmentedControl> {
  String _value = '语文';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CupertinoSlidingSegmentedControl'),
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
          child: CupertinoSlidingSegmentedControl(
            children: {
              '语文': Container(
                child: Text('语文'),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              ),
              '数学': Container(
                child: Text('数学'),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              ),
              '英语': Container(
                child: Text('英语'),
                padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 5.0),
              )
            },
            groupValue: _value,
            onValueChanged: (value) {
              setState(() {
                _value = value;
              });
            },
          ),
        ),
      ),
    );
  }
}
