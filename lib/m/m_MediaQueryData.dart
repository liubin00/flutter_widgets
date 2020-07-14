import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_MediaQueryData extends StatefulWidget {
  @override
  m_MediaQueryDataState createState() {
    return m_MediaQueryDataState();
  }
}

class m_MediaQueryDataState extends State<m_MediaQueryData> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQueryData'),
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
          children: <Widget>[],
        ),
      ),
    );
  }
}
