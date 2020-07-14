import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_ListTile extends StatefulWidget {
  @override
  l_ListTileState createState() {
    return l_ListTileState();
  }
}

class l_ListTileState extends State<l_ListTile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile'),
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
            ListTile(
              isThreeLine: true,
              leading: Container(
                height: 45,
                width: 45,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('img/1.jpg'), fit: BoxFit.fill),
                ),
              ),
              title: Text('测试1'),
              subtitle: Text(
                '测试2',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              trailing: Icon(Icons.sort),
            )
          ],
        ),
      ),
    );
  }
}
