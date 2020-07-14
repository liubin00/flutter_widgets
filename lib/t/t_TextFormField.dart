import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TextFormField extends StatefulWidget {
  @override
  t_TextFormFieldState createState() {
    return t_TextFormFieldState();
  }
}

class t_TextFormFieldState extends State<t_TextFormField> {
  var _username = '';
  var _userpwd = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextFormField'),
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
            Form(
              key: _formKey,
              onWillPop: () async {
                print('1');
                return await showDialog<bool>(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text('提示'),
                        content: Text('确定退出吗？'),
                        actions: <Widget>[
                          FlatButton(
                            child: Text('取消'),
                            onPressed: () {
                              Navigator.of(context).pop(false);
                            },
                          ),
                          FlatButton(
                            child: Text('确认'),
                            onPressed: () {
                              Navigator.of(context).pop(true);
                            },
                          )
                        ],
                      );
                    });
              },
              child: Column(
                children: <Widget>[
                  TextFormField(
                    decoration: InputDecoration(hintText: '输入用户名'),
                    onSaved: (value) {
                      _username = value;
                    },
                    validator: (String value) {
                      return value.length >= 6 ? null : '用户名少于6个字符';
                    },
                  ),
                  TextFormField(
                    decoration: InputDecoration(hintText: '输入密码'),
                    obscureText: true,
                    onSaved: (value) {
                      _userpwd = value;
                    },
                    validator: (String value) {
                      return value.length >= 6 ? null : '用户密码少于6个字符';
                    },
                  ),
                  RaisedButton(
                    child: Text('登录'),
                    onPressed: () {
                      var _state = Form.of(context);
                      if (_state.validate()) {
                        _state.save();
                        print('$_username' + '$_userpwd');
                      } else {
                        print('$_username' + '$_userpwd');
                      }
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
