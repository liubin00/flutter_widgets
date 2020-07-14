import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliverFillRemaining extends StatefulWidget {
  @override
  s_SliverFillRemainingState createState() {
    return s_SliverFillRemainingState();
  }
}

class s_SliverFillRemainingState extends State<s_SliverFillRemaining> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliverFillRemaining'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: Container(
              color: Colors.amber,
              height: 150.0,
            ),
          ),
          SliverFillRemaining(
            hasScrollBody: true,
            child: Container(
              color: Colors.blue,
              child: Icon(
                Icons.sentiment_very_satisfied,
                size: 80,
                color: Colors.black,
              ),
            ),
          )
        ],
      ),
    );
  }
}
