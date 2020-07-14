import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GridView extends StatefulWidget {
  @override
  g_GridViewState createState() {
    return g_GridViewState();
  }
}

class g_GridViewState extends State<g_GridView> {
  _createGridViewItem(Color color) {
    return Container(
      height: 80,
      color: color,
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GridView'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        itemBuilder: (context, index) {
          return Container(
            height: 80,
            color: Colors.primaries[index % Colors.primaries.length],
          );
        },
        itemCount: 51,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 2, mainAxisSpacing: 4),
      ),
    );
  }
}
