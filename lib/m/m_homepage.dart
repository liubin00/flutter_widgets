import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'm_Material.dart';
import 'm_MaterialBanner.dart';
import 'm_MaterialBannerTheme.dart';
import 'm_MediaQueryData.dart';
import 'm_MergeableMaterial.dart';
import 'm_ModalBarrier.dart';
import 'm_MonthPicker.dart';

class m_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Material'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_Material()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('MaterialBanner'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_MaterialBanner()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('MaterialBannerTheme'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_MaterialBannerTheme()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('MediaQueryData'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_MediaQueryData()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('MergeableMaterial'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_MergeableMaterial()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('ModalBarrier'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_ModalBarrier()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('MonthPicker'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => m_MonthPicker()));
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
