import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FadeInImage extends StatefulWidget {
  @override
  f_FadeInImageState createState() {
    return f_FadeInImageState();
  }
}

class f_FadeInImageState extends State<f_FadeInImage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FadeInImage'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
          alignment: Alignment.center,
          child: FadeInImage(
            placeholder: AssetImage('img/1.jpg'),
            image: AssetImage('img/2.jpg'),
            fadeOutDuration: Duration(seconds: 2),
            fadeInCurve: Curves.easeIn,
          )),
    );
  }
}
