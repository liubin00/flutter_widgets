import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CheckBox extends StatefulWidget {
  @override
  c_CheckBoxState createState() {
    return c_CheckBoxState();
  }
}

class c_CheckBoxState extends State<c_CheckBox> {
  var _checkValue1 = false;
  var _checkValue2 = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckBox'),
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
            Checkbox(
              value: _checkValue1,
              onChanged: (value) {
                setState(() {
                  _checkValue1 = !_checkValue1;
                });
              },
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: CheckboxListTile(
                subtitle: Text('测试2'),
                secondary: Icon(Icons.person),
                title: Text('测试1'),
                value: _checkValue2,
                onChanged: (value) {
                  setState(() {
                    _checkValue2 = !_checkValue2;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
