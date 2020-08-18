import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class b_Banner extends StatefulWidget {
  @override
  b_BannerState createState() {
    return b_BannerState();
  }
}

class b_BannerState extends State<b_Banner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Banner'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body:ListView(
        children: [
          Container(
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
          )
        ],
      ),
    );
  }
}
