import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CheckedModeBanner extends StatefulWidget {
  @override
  c_CheckedModeBannerState createState() {
    return c_CheckedModeBannerState();
  }
}

class c_CheckedModeBannerState extends State<c_CheckedModeBanner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CheckedModeBanner'),
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
            Banner(
              color: Colors.blue,
              message: 'Banner',
              location: BannerLocation.topStart,
              child: Container(
                width: 200,
                height: 200,
                color: Colors.red,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 200,
              height: 200,
              color: Colors.black,
              child: Banner(
                color: Colors.blue,
                message: 'Banner',
                location: BannerLocation.topEnd,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
