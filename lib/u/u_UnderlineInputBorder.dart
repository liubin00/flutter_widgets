import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class u_UnderlineInputBorder extends StatefulWidget {
  @override
  u_UnderlineInputBorderState createState() {
    return u_UnderlineInputBorderState();
  }
}

class u_UnderlineInputBorderState extends State<u_UnderlineInputBorder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('UnderlineInputBorder'),
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
                RaisedButton(
                  shape: BeveledRectangleBorder(
                    side: BorderSide(width: 1, color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('测试1'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: BeveledRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(100)),
                  child: Text('测试2'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: BeveledRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.blue),
                      borderRadius: BorderRadius.circular(0)),
                  child: Text('测试3'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: Border(top: BorderSide(color: Colors.red, width: 2)),
                  child: Text('测试4'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: Border(
                      top: BorderSide(color: Colors.pink, width: 10),
                      right: BorderSide(color: Colors.blue, width: 10),
                      bottom: BorderSide(color: Colors.black, width: 10),
                      left: BorderSide(color: Colors.greenAccent, width: 10)),
                  child: Text('测试5'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: BorderDirectional(
                    start: BorderSide(color: Colors.green, width: 2),
                    end: BorderSide(color: Colors.pink, width: 2),
                  ),
                  child: Text('测试6'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: CircleBorder(side: BorderSide(color: Colors.red)),
                  child: Text('测试7'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: ContinuousRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text('测试8'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('测试9'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: StadiumBorder(side: BorderSide(color: Colors.blue)),
                  child: Text('测试10'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Text('测试11'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RaisedButton(
                  shape: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                  ),
                  child: Text('测试12'),
                  onPressed: () {},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
