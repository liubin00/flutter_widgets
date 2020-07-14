import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TabPageSelector extends StatefulWidget {
  @override
  t_TabPageSelectorState createState() {
    return t_TabPageSelectorState();
  }
}

class t_TabPageSelectorState extends State<t_TabPageSelector> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TabPageSelectorIndicator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ),
    );
//    return Scaffold(
//      appBar: AppBar(
//        title: Text('TabPageSelector'),
//        leading: IconButton(
//          icon: Icon(Icons.chevron_left),
//          onPressed: () {
//            Navigator.pop(context);
//          },
//        ),
//      ),
//      body: Container(
//        alignment: Alignment.center,
//        child: Column(
//          children: <Widget>[
//            Container(
//              height: 50,
//              width: double.infinity,
//              color: Colors.blue,
//              alignment: Alignment.center,
//              child: TabPageSelector(
//                controller: _tabController,
//                color: Colors.white,
//                selectedColor: Colors.red,
//              ),
//            ),
//            Expanded(
//              child: TabBarView(
//                controller: _tabController,
//                children: <Widget>[
//                  Container(
//                    color: Colors.blue,
//                  ),
//                  Container(
//                    color: Colors.red,
//                  ),
//                  Container(
//                    color: Colors.yellow,
//                  )
//                ],
//              ),
//            )
//          ],
//        ),
//      ),
//    );
  }
}
