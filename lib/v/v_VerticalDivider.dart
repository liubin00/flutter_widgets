import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class v_VerticalDivider extends StatefulWidget {
  @override
  v_VerticalDividerState createState() {
    return v_VerticalDividerState();
  }
}

class v_VerticalDividerState extends State<v_VerticalDivider> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('VerticalDivider'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  height: 300,
                  child: Divider(
                    height: 10,
                    thickness: 5,
                    color: Colors.red,
                    indent: 10,
                    endIndent: 20,
                  ),
                ),
                Container(
                  height: 300,
                  child: VerticalDivider(
                    width: 20,
                    thickness: 2,
                    color: Colors.red,
                    indent: 10,
                    endIndent: 10,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
