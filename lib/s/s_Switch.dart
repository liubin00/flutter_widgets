import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Switch extends StatefulWidget {
  @override
  s_SwitchState createState() {
    return s_SwitchState();
  }
}

class s_SwitchState extends State<s_Switch> {
  var _switchValue1 = false;
  var _switchValue2 = false;
  var _switchValue3 = false;
  var _switchValue4 = false;
  var _switchValue5 = false;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Switch'),
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
            Expanded(
              child: Switch(
                value: _switchValue1,
                onChanged: (value) {
                  setState(() {
                    _switchValue1 = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Switch(
                value: _switchValue2,
                activeColor: Colors.red,
                activeTrackColor: Colors.blue,
                onChanged: (value) {
                  setState(() {
                    _switchValue2 = value;
                  });
                },
              ),
            ),
            Expanded(
              child: Switch(
                value: _switchValue3,
                activeThumbImage: AssetImage('img/1.jpg'),
                onChanged: (value) {
                  setState(() {
                    _switchValue3 = value;
                  });
                },
              ),
            ),
            Expanded(
              child: SwitchListTile(
                title: Text('普通开关'),
                value: _switchValue4,
                onChanged: (value) {
                  setState(() {
                    _switchValue4 = value;
                  });
                },
              ),
            ),
            Expanded(
              child: CupertinoSwitch(
                value: _switchValue5,
                onChanged: (value) {
                  setState(() {
                    _switchValue5 = value;
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
