import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_Directionality extends StatefulWidget {
  @override
  d_DirectionalityState createState() {
    return d_DirectionalityState();
  }
}

class d_DirectionalityState extends State<d_Directionality> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Directionality'),
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
              height: 200,
              width: 200,
              color: Colors.red,
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: Text('测试'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
