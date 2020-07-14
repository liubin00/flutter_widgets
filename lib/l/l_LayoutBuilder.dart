import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_LayoutBuilder extends StatefulWidget {
  @override
  l_LayoutBuilderState createState() {
    return l_LayoutBuilderState();
  }
}

class l_LayoutBuilderState extends State<l_LayoutBuilder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LayoutBuilder'),
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
            LayoutBuilder(
              builder: (BuildContext context, BoxConstraints constraints) {
                var color = Colors.red;
                if (constraints.maxHeight > 100) {
                  color = Colors.blue;
                }
                return Container(
                  height: 50,
                  width: 50,
                  color: color,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
