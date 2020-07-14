import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FractionalTranslation extends StatefulWidget {
  @override
  f_FractionalTranslationState createState() {
    return f_FractionalTranslationState();
  }
}

class f_FractionalTranslationState extends State<f_FractionalTranslation> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FractionalTranslation'),
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
              color: Colors.blue,
              child: FractionalTranslation(
                translation: Offset(0.25, .2),
                child: Container(
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
