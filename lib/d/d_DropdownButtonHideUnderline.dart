import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DropdownButtonHideUnderline extends StatefulWidget {
  @override
  d_DropdownButtonHideUnderlineState createState() {
    return d_DropdownButtonHideUnderlineState();
  }
}

class d_DropdownButtonHideUnderlineState
    extends State<d_DropdownButtonHideUnderline> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DropdownButtonHideUnderline'),
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
            DropdownButtonHideUnderline(
              child: DropdownButton(
                value: null,
                hint: Text('请选择'),
                underline: Divider(
                  color: Colors.red,
                  height: 5,
                  thickness: 5,
                ),
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
                onChanged: (value) {
                  setState(() {
                    value = value;
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
