import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_ScrollConfiguration extends StatefulWidget {
  @override
  s_ScrollConfigurationState createState() {
    return s_ScrollConfigurationState();
  }
}

class s_ScrollConfigurationState extends State<s_ScrollConfiguration> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ScrollConfiguration'),
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
              height: 500,
              child: ScrollConfiguration(
                behavior: ScrollBehavior(),
                child: ListView.separated(
                    itemBuilder: (BuildContext context, int index) {
                      return Text('测试$index');
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                    itemCount: 50),
              ),
            )
          ],
        ),
      ),
    );
  }
}
