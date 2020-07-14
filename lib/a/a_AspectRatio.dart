import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AspectRatio extends StatefulWidget {
  @override
  a_AspectRatioState createState() {
    return a_AspectRatioState();
  }
}

class a_AspectRatioState extends State<a_AspectRatio> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('AspectRatio'),
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
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 60, maxWidth: 200),
              child: Container(
                alignment: Alignment.center,
                height: 300,
                width: 300,
                color: Colors.red,
                child: Text('ConstrainedBox'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              child: UnconstrainedBox(
                child: Container(
//                  height: 300,
//                  width: 300,
                  alignment: Alignment.center,
                  height: 100,
                  width: 100,
                  color: Colors.red,
                  child: Text('UnconstrainedBox'),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              width: 200,
              height: 60,
              color: Colors.red,
              child: SizedBox(
                height: 60,
                width: 200,
                child: Text(
                  'SizedBox',
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: AspectRatio(
                aspectRatio: 5 / 1,
                child: Container(
                  alignment: Alignment.center,
                  child: Text('AspectRatio'),
                  color: Colors.red,
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            FractionallySizedBox(
              widthFactor: .7,
              child: RaisedButton(              onPressed: (){},
                child: Text('FractionallySizedBox'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              width: 100,
              child: LimitedBox(
                maxHeight: 50,
                maxWidth: 100,
                child: Container(
                  alignment: Alignment.center,
                  child: Text('LimitedBox'),
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
