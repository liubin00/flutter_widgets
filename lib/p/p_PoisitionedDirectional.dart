import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PoisitonedDirectional extends StatefulWidget {
  @override
  p_PoisitonedDirectionalState createState() {
    return p_PoisitonedDirectionalState();
  }
}

class p_PoisitonedDirectionalState extends State<p_PoisitonedDirectional> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Aqlign'),
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
              width: 200,
              height: 200,
              child: Stack(
                children: [
                  PositionedDirectional(
                    start: 10,
                    end: 10,
                    top: 10,
                    bottom: 10,
                    child: Container(
                      color: Colors.red,
                    ),
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
