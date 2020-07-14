import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_MaterialBannerTheme extends StatefulWidget {
  @override
  m_MaterialBannerThemeState createState() {
    return m_MaterialBannerThemeState();
  }
}

class m_MaterialBannerThemeState extends State<m_MaterialBannerTheme> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialBannerTheme'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: MaterialBannerTheme(
          data: MaterialBannerTheme.of(context)
              .copyWith(backgroundColor: Colors.red),
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
      ),
    );
  }
}
