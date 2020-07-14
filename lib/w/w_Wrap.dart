import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class w_Wrap extends StatefulWidget {
  @override
  w_WrapState createState() {
    return w_WrapState();
  }
}

class w_WrapState extends State<w_Wrap> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Wrap'),
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
              child: Wrap(
                spacing: 5,
                runSpacing: 3,
                children: List.generate(
                  10,
                  (index) {
                    double w = 50.0 + 10 * index;
                    return Container(
                      color: Colors.primaries[index],
                      height: 50,
                      width: w,
                      child: Text('$index'),
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
