import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_Placeholder extends StatefulWidget {
  @override
  p_PlaceholderState createState() {
    return p_PlaceholderState();
  }
}

class p_PlaceholderState extends State<p_Placeholder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Placeholder'),
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
              height: 100,
              width: 400,
              child: Placeholder(),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 100,
              width: 300,
              child: Placeholder(
                color: Colors.red,
                strokeWidth: 2,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              color: Colors.green,
              height: 200,
              child: ListView(
                children: <Widget>[
                  Placeholder(
                    fallbackHeight: 100,
                    fallbackWidth: 100,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
