import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class u_UserAccountsDrawerHeader extends StatefulWidget {
  @override
  u_UserAccountsDrawerHeaderState createState() {
    return u_UserAccountsDrawerHeaderState();
  }
}

class u_UserAccountsDrawerHeaderState
    extends State<u_UserAccountsDrawerHeader> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('UserAccountsDrawerHeader'),
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
              child: UserAccountsDrawerHeader(
                accountName: Text('测试1'),
                accountEmail: Text('xxxxxxxx@qq.com'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(30))),
                accountName: Text('测试2'),
                accountEmail: Text('xxxxxxxxx@qq.com'),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              child: UserAccountsDrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.all(
                    Radius.circular(30),
                  ),
                ),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: AssetImage('img/1.jpg'),
                ),
                otherAccountsPictures: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage('img/1.jpg'),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage('img/1.jpg'),
                  )
                ],
                accountName: Text('测试3'),
                accountEmail: Text('xxxxxxxx@qq.com'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
