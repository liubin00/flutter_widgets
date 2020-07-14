import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DrawerHeader extends StatefulWidget {
  @override
  d_DrawerHeaderState createState() {
    return d_DrawerHeaderState();
  }
}

class d_DrawerHeaderState extends State<d_DrawerHeader> {
  var _color = Colors.grey;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DrawerHeader'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: DrawerHeader(
          decoration: BoxDecoration(color: _color),
          duration: Duration(seconds: 2),
          child: Row(
            children: <Widget>[
              CircleAvatar(
                child: Text('测试1'),
                radius: 30,
              ),
              SizedBox(
                width: 10,
              ),
              ActionChip(
                label: Text('测试2'),
                onPressed: () {
                  setState(() {
                    if (_color == Colors.grey) {
                      _color = Colors.red;
                    } else {
                      _color = Colors.grey;
                    }
                  });
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
