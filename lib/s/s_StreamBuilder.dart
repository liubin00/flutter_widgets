import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_StreamBuilder extends StatefulWidget {
  @override
  s_StreamBuilderState createState() {
    return s_StreamBuilderState();
  }
}

class s_StreamBuilderState extends State<s_StreamBuilder> {
  StreamController<String> _streamController;

  @override
  void initState() {
    _streamController = StreamController<String>();
  }

  @override
  void dispose() {
    _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('StreamBuilder'),
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
            RaisedButton(
              child: Text('发送数据'),
              onPressed: () {
                _streamController.add('数据');
              },
            ),
            StreamBuilder(
              stream: _streamController.stream,
              builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
                if (snapshot.hasData) {
                  return Text(snapshot.data);
                }
                return Text('未收到数据');
              },
            ),
          ],
        ),
      ),
    );
  }
}
