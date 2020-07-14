import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_ColorFiltered extends StatefulWidget {
  @override
  c_ColorFilteredState createState() {
    return c_ColorFilteredState();
  }
}

class c_ColorFilteredState extends State<c_ColorFiltered> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ColorFiltered'),
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
              width: 200,
              height: 200,
              color: Colors.grey,
              child: Image.asset('img/1.jpg'),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 200,
              height: 200,
              child: ColorFiltered(
                colorFilter: ColorFilter.mode(Colors.blue, BlendMode.modulate),
                child: Image.asset('img/1.jpg'),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 400,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Image.asset('img/1.jpg'),
                  ),
                  Expanded(
                    child: ColorFiltered(
                      colorFilter: ColorFilter.mode(
                          Colors.pink[200], BlendMode.modulate),
                      child: Image.asset('img/1.jpg'),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            ColorFiltered(
              colorFilter: ColorFilter.mode(Colors.grey, BlendMode.saturation),
              child: Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
            )
          ],
        ),
      ),
    );
  }
}
