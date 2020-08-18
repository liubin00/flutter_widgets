import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Spacer extends StatefulWidget {
  @override
  s_SpacerState createState() {
    return s_SpacerState();
  }
}

class s_SpacerState extends State<s_Spacer> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Spacer'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 50,
                  child: Row(
                    children: <Widget>[
                      Container(
                        color: Colors.blue,
                        width: 50,
                        height: 50,
                      ),
                      Flexible(
                        child: Container(
                          color: Colors.red,
                          height: 50,
                        ),
                      ),
                      Container(
                        color: Colors.green,
                        height: 50,
                        width: 100,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  height: 400,
                  child: Column(
                    children: <Widget>[
                      Flexible(
                        flex: 1,
                        child: Container(
                          color: Colors.blue,
                          alignment: Alignment.center,
                          child: Text(
                            '1',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        child: Container(
                          color: Colors.red,
                          alignment: Alignment.center,
                          child: Text(
                            '2',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 3,
                        child: Container(
                          color: Colors.green,
                          alignment: Alignment.center,
                          child: Text(
                            '3',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 100,
                    ),
                    Flexible(
                      child: OutlineButton(
                        child: Text('OutlineButton'),                    onPressed: (){},
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 100,
                    ),
                    Expanded(
                      child: OutlineButton(
                        child: Text('OutlineButton'),                    onPressed: (){},
                      ),
                    ),
                    Container(
                      color: Colors.blue,
                      height: 50,
                      width: 100,
                    )
                  ],
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.green,
                    ),
                    Spacer(
                      flex: 2,
                    ),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.blue,
                    ),
                    Spacer(),
                    Container(
                      width: 100,
                      height: 50,
                      color: Colors.red,
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
