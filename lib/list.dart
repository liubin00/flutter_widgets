import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterwidgets/a/a_homepage.dart';
import 'package:flutterwidgets/r/r_homepage.dart';
import 'package:flutterwidgets/s/s_homepage.dart';
import 'package:flutterwidgets/t/t_homepage.dart';
import 'package:flutterwidgets/u/u_homepage.dart';
import 'package:flutterwidgets/v/v_homepage.dart';
import 'package:flutterwidgets/w/w_homepage.dart';
import 'package:flutterwidgets/y/y_homepage.dart';
import 'b/b_homepage.dart';
import 'c/c_homepage.dart';
import 'd/d_homepage.dart';
import 'e/e_homepage.dart';
import 'f/f_homepage.dart';
import 'g/g_homepage.dart';
import 'h/h_homepage.dart';
import 'i/i_homepage.dart';
import 'l/l_homepage.dart';
import 'm/m_homepage.dart';
import 'n/n_homepage.dart';
import 'o/o_homepage.dart';
import 'p/p_homepage.dart';

class button_list extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('A'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => a_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('B'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => b_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('C'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => c_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('E'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => e_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('F'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => f_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('G'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => g_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('H'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => h_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('I'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => i_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('L'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => l_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('N'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => n_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('O'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => o_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('P'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => p_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('R'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => r_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('S'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => s_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('T'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => t_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('U'),
              onPressed: () {
                print('123');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => u_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('V'),
              onPressed: () {
                print('123');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => v_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('W'),
              onPressed: () {
                print('123');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => w_homepage()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            width: 350,
            height: 60,
            child: RaisedButton(
              child: Text('Y'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => y_homepage()));
              },
            ),
          ),
        ],
      ),
    );
  }
}
