import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PhysicalModel extends StatefulWidget {
  @override
  p_PhysicalModelState createState() {
    return p_PhysicalModelState();
  }
}

class p_PhysicalModelState extends State<p_PhysicalModel> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PhysicalModel'),
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
              height: 60,
            ),
            Container(
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                elevation: 8,
                child: Container(
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: PhysicalModel(
                borderRadius: BorderRadius.circular(20),
                color: Colors.blue,
                elevation: 18,
                shadowColor: Colors.red,
                child: Container(
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            Container(
              child: PhysicalShape(
                color: Colors.red,
                clipper: ShapeBorderClipper(shape: CircleBorder()),
                child: Container(
                  height: 150,
                  width: 150,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
