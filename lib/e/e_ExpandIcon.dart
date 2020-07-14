import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class e_ExpandIcon extends StatefulWidget {
  @override
  e_ExpandIconState createState() {
    return e_ExpandIconState();
  }
}

class e_ExpandIconState extends State<e_ExpandIcon> {
  bool _expanded = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpandIcon'),
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
            ExpandIcon(
              size: 50,
//              color: Colors.blue,
              disabledColor: Colors.grey,
              expandedColor: Colors.blue,
              onPressed: (value) {
                setState(() {
                  _expanded = !_expanded;
                });
              },
              isExpanded: _expanded,
            )
          ],
        ),
      ),
    );
  }
}
