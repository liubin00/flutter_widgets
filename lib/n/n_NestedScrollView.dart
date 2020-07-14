import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class n_NestedScrollView extends StatefulWidget {
  @override
  n_NestedScrollViewState createState() {
    return n_NestedScrollViewState();
  }
}

class n_NestedScrollViewState extends State<n_NestedScrollView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NestedScrollView'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          return Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          );
        },
        itemCount: 20,
      ),
    );
  }
}
