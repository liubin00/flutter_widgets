import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Stack extends StatefulWidget {
  @override
  s_StackState createState() {
    return s_StackState();
  }
}

class s_StackState extends State<s_Stack> {  var _index = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stack'),
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
                Container(
                  width: 200,
                  height: 200,
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.black,
                      ),
                      Container(
                        width: 170,
                        height: 170,
                        color: Colors.red,
                      ),
                      Container(
                        width: 140,
                        height: 140,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  width: 200,
                  height: 200,
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      Container(
                        width: 200,
                        height: 200,
                        color: Colors.grey,
                      ),
                      Container(
                        width: 170,
                        height: 170,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 140,
                        height: 140,
                        color: Colors.red,
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  child: Stack(
                    overflow: Overflow.visible,
                    children: <Widget>[
                      Container(
                        height: 200,
                        width: 200,
                        color: Colors.blue,
                      ),
                      Positioned(
                        left: 100,
                        top: 100,
                        height: 150,
                        width: 150,
                        child: Container(
                          color: Colors.green,
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 100,
                ),

                IndexedStack(
                  index: _index,
                  children: <Widget>[
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.red,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.fastfood,
                          size: 60,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.cake,
                          size: 60,
                          color: Colors.red,
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        height: 300,
                        width: 300,
                        color: Colors.yellow,
                        alignment: Alignment.center,
                        child: Icon(
                          Icons.local_cafe,
                          size: 60,
                          color: Colors.blue,
                        ),
                      ),
                    )
                  ],
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.fastfood),
                      onPressed: () {
                        setState(() {
                          _index = 0;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.cake),
                      onPressed: () {
                        setState(() {
                          _index = 1;
                        });
                      },
                    ),
                    IconButton(
                      icon: Icon(Icons.local_cafe),
                      onPressed: () {
                        setState(() {
                          _index = 2;
                        });
                      },
                    )
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
