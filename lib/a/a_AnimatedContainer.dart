import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedContainer extends StatefulWidget {
  @override
  a_AnimatedContainerState createState() {
    return a_AnimatedContainerState();
  }
}

class a_AnimatedContainerState extends State<a_AnimatedContainer> {
  bool _click = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AnimatedContainer'),
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
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _click = !_click;
                  });
                },
                child: AnimatedContainer(
                  height: _click ? 200 : 100,
                  width: _click ? 200 : 100,
                  color: Colors.blue,
                  duration: Duration(seconds: 3),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
