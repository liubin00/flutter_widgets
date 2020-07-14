import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DropDownButtonFormField extends StatefulWidget {
  @override
  d_DropDownButtonFormFieldState createState() {
    return d_DropDownButtonFormFieldState();
  }
}

class d_DropDownButtonFormFieldState extends State<d_DropDownButtonFormField> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DropDownButtonFormField'),
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
            DropdownButtonFormField(
              value: null,
              hint: Text('请选择'),
              items: [
                DropdownMenuItem(
                  child: Text('语文'),
                  value: '语文',
                ),
                DropdownMenuItem(
                  child: Text('数学'),
                  value: '数学',
                ),
                DropdownMenuItem(
                  child: Text('英语'),
                  value: '英语',
                )
              ],
              onChanged: (String value) {
                setState(() {
                  value = value;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
