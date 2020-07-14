import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CustomClipper extends StatefulWidget {
  @override
  c_CustomClipperState createState() {
    return c_CustomClipperState();
  }
}

class c_CustomClipperState extends State<c_CustomClipper> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomClipper'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ListView(
          children: [
            Column(
              children: <Widget>[
                Container(
                  child: ClipRect(
                    child: Align(
                      alignment: Alignment.topCenter,
                      heightFactor: 0.3,
                      child: Container(
                        height: 150,
                        width: 150,
                        child: Image.asset(
                          'img/1.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      height: 150,
                      width: 150,
                      child: Image.asset(
                        'img/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ClipOval(
                    child: Container(
                      height: 150,
                      width: 250,
                      child: Image.asset(
                        'img/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ClipPath.shape(
                    shape: StadiumBorder(),
                    child: Container(
                      height: 150,
                      width: 250,
                      child: Image.asset(
                        'img/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: ClipPath(
                    clipper: TrianglePath(),
                    child: Container(
                      height: 150,
                      width: 250,
                      child: Image.asset(
                        'img/1.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class TrianglePath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(size.width / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
