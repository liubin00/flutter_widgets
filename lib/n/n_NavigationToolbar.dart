import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class n_NavigationToolbar extends StatefulWidget {
  @override
  n_NavigationToolbarState createState() {
    return n_NavigationToolbarState();
  }
}

class n_NavigationToolbarState extends State<n_NavigationToolbar> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('NavigationToolba'),
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
              height: 300,
              child: NavigationToolbar(
                leading: IconButton(
                  icon: Icon(Icons.add),                    onPressed: (){},
                ),
                middle: IconButton(
                  icon: Icon(Icons.clear),                    onPressed: (){},
                ),
                trailing: IconButton(
                  icon: Icon(Icons.home),                    onPressed: (){},
                ),
              ),
            ),
            Container(
              height: 300,
              child: NavigationToolbar(
                centerMiddle: false,
                leading: Icon(Icons.home),
                middle: Icon(Icons.people),
                trailing: Icon(Icons.clear),
              ),
            ),
            Container(
              height: 300,
              child: NavigationToolbar(
                centerMiddle: false,
                middleSpacing: 100,
                leading: Icon(Icons.book),
                middle: Icon(Icons.sort),
                trailing: Icon(Icons.shop),
              ),
            )
          ],
        ),
      ),
    );
  }
}
