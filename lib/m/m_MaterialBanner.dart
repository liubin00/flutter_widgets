import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_MaterialBanner extends StatefulWidget {
  @override
  m_MaterialBannerState createState() {
    return m_MaterialBannerState();
  }
}

class m_MaterialBannerState extends State<m_MaterialBanner> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialBanner'),
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
              child: MaterialBanner(
                content: Text('测试1'),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  )
                ],
              ),
            ),
            Container(
              child: MaterialBanner(
                leading: IconButton(
                  icon: Icon(Icons.person),
                  onPressed: () {},
                ),
                leadingPadding: EdgeInsets.all(5),
                content: Text('测试2'),
                actions: <Widget>[
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: Icon(Icons.close),
                    onPressed: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
