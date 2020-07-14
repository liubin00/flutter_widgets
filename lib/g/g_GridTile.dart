import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GridTile extends StatefulWidget {
  @override
  g_GridTileState createState() {
    return g_GridTileState();
  }
}

class g_GridTileState extends State<g_GridTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GridTile'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return GridTile(
            child: Container(
              height: 80,
              color: Colors.primaries[index % Colors.primaries.length],
            ),
          );
        },
        itemCount: 50,
      ),
    );
  }
}
