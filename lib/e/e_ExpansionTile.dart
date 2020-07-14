import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class e_ExpansionTile extends StatefulWidget {
  @override
  e_ExpansionTileState createState() {
    return e_ExpansionTileState();
  }
}

class e_ExpansionTileState extends State<e_ExpansionTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Expansion'),
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
            Container(
              child: ExpansionTile(
                title: Text('学科'),
                children: <Widget>[
                  Text('英语'),
                  Text('语文'),
                  Text('数学'),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              child: ExpansionTile(
                leading: Icon(Icons.home),
                subtitle: Text('各种学科'),
                backgroundColor: Colors.greenAccent,
                title: Text('学科'),
                children: <Widget>[
                  Text('英语'),
                  Text('数学'),
                  Text('语文'),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
