import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_Radio extends StatefulWidget {
  @override
  r_RadioState createState() {
    return r_RadioState();
  }
}

class r_RadioState extends State<r_Radio> {
  var _radioValue = '1';
  var _radioGroupValue = '';
  var _radioGroupValue1 = '语文';
  var _radioGroupValue2 = '数学';

  _build() {
    return Radio(
      value: _radioValue,
      groupValue: _radioGroupValue,
      onChanged: (value) {
        setState(() {
          _radioGroupValue = value;
        });
      },
    );
  }

  _build1() {
    return Row(
      children: <Widget>[
        Expanded(
          child: Radio(
            activeColor: Colors.red,
            value: '语文',
            groupValue: _radioGroupValue1,
            onChanged: (value) {
              setState(() {
                _radioGroupValue1 = value;
              });
            },
          ),
        ),
        Expanded(
          child: Radio(
            activeColor: Colors.red,
            value: '数学',
            groupValue: _radioGroupValue1,
            onChanged: (value) {
              setState(() {
                _radioGroupValue1 = value;
              });
            },
          ),
        ),
        Expanded(
          child: Radio(
            activeColor: Colors.red,
            value: '英语',
            groupValue: _radioGroupValue1,
            onChanged: (value) {
              setState(() {
                _radioGroupValue1 = value;
              });
            },
          ),
        )
      ],
    );
  }

  _build2() {
    return Row(
      children: <Widget>[
        Flexible(
          child: RadioListTile(
            title: Text('语文'),
            value: '语文',
            groupValue: _radioGroupValue2,
            onChanged: (value) {
              setState(() {
                _radioGroupValue2 = value;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile(
            title: Text('数学'),
            value: '数学',
            groupValue: _radioGroupValue2,
            onChanged: (value) {
              setState(() {
                _radioGroupValue2 = value;
              });
            },
          ),
        ),
        Flexible(
          child: RadioListTile(
            title: Text('英语'),
            value: '英语',
            groupValue: _radioGroupValue2,
            onChanged: (value) {
              setState(() {
                _radioGroupValue2 = value;
              });
            },
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Radio'),
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
              child: _build(),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: _build1(),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: _build2(),
            )
          ],
        ),
      ),
    );
  }
}
