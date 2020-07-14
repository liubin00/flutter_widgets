import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_LinearProgressIndicator extends StatefulWidget {
  @override
  l_LinearProgressIndicatorState createState() {
    return l_LinearProgressIndicatorState();
  }
}

class l_LinearProgressIndicatorState extends State<l_LinearProgressIndicator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('LinearProgressIndicator'),
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
