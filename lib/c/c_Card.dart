import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_Card extends StatefulWidget {
  @override
  c_CardState createState() {
    return c_CardState();
  }
}

class c_CardState extends State<c_Card> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Card(
          color: Colors.grey,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: Icon(Icons.person),
                title: Text('测试1'),
                subtitle: Text('测试2'),
              ),
              ButtonBar(
                children: <Widget>[
                  FlatButton(
                    child: const Text('测试3'),
                    onPressed: () {},
                  ),
                  FlatButton(
                    child: const Text('测试4'),
                    onPressed: () {},
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
