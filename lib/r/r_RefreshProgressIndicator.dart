import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_RefreshProgressIndicator extends StatefulWidget {
  @override
  r_RefreshProgressIndicatorState createState() {
    return r_RefreshProgressIndicatorState();
  }
}

class r_RefreshProgressIndicatorState
    extends State<r_RefreshProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('RefreshProgressIndicator'),
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
            SizedBox(
              height: 40,
            ),
            LinearProgressIndicator(),
            SizedBox(
              height: 40,
            ),
            LinearProgressIndicator(
              value: 0.2,
            ),
            SizedBox(
              height: 40,
            ),
            LinearProgressIndicator(
              value: 0.2,
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
            ),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(),
            SizedBox(
              height: 40,
            ),
            CircularProgressIndicator(
              value: 0.3,
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.pink),
            ),
            SizedBox(
              height: 40,
            ),
            CupertinoActivityIndicator(
              radius: 20,
            ),
            SizedBox(
              height: 40,
            ),
            RefreshProgressIndicator(),
            SizedBox(
              height: 40,
            ),
            RefreshProgressIndicator(
              backgroundColor: Colors.blue,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              strokeWidth: 5.0,
            )
          ],
        ),
      ),
    );
  }
}
