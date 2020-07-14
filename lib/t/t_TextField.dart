import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TextField extends StatefulWidget {
  @override
  t_TextFieldState createState() {
    return t_TextFieldState();
  }
}

class t_TextFieldState extends State<t_TextField> {

  var _textFieldValue = '';
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TextField'),
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
              child: TextField(),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  labelText: '姓名：',
                  labelStyle: TextStyle(color: Colors.red),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    helperStyle: TextStyle(color: Colors.blue),
                    helperText: '不符合邮箱规则',
                    helperMaxLines: 1),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    hintText: '请输入用户名',
                    hintStyle: TextStyle(color: Colors.grey),
                    hintMaxLines: 1),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  errorText: '用户名称输入错误',
                  errorStyle: TextStyle(fontSize: 12),
                  errorMaxLines: 1,
                  errorBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.red),
                  ),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  icon: Icon(Icons.person),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person),
                ),
              ),
            ),
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                    counterText: '${_textFieldValue.length}/32'),
                onChanged: (value) {
                  setState(() {
                    if (value.length > 32) {
                      _textFieldValue = value.substring(0, 32);
                    } else {
                      _textFieldValue = value;
                    }
                  });
                },
              ),
            ),
            Expanded(
              child: Container(
                height: 60,
                width: 250,
                child: TextField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(Radius.circular(100)),
                    ),
                    hintText: '微信号/手机号/邮箱',
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey),
                      borderRadius: BorderRadius.all(
                        Radius.circular(100),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
