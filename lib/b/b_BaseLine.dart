import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b_BaseLine extends StatefulWidget {
  @override
  b_BaseLineState createState() {
    return b_BaseLineState();
  }
}

class b_BaseLineState extends State<b_BaseLine> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('BaseLine'),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'BaseLine',
                    style: TextStyle(
                        fontSize: 20.0, textBaseline: TextBaseline.alphabetic),
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Container(
                    width: 60.0,
                    height: 60.0,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
                Baseline(
                  baseline: 50.0,
                  baselineType: TextBaseline.alphabetic,
                  child: Text(
                    'BaseLine',
                    style: TextStyle(
                        fontSize: 35.0, textBaseline: TextBaseline.alphabetic),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
