import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'c_Card.dart';
import 'c_Center.dart';
import 'c_CheckBox.dart';
import 'c_CheckedModeBanner.dart';
import 'c_Chip.dart';
import 'c_CircleAvatar.dart';
import 'c_CircleBorder.dart';
import 'c_ColorFiltered.dart';
import 'c_Column.dart';
import 'c_ConstrainedBox.dart';
import 'c_Container.dart';
import 'c_ContinuousRectangleBorder.dart';
import 'c_CupertinoActionSheet.dart';
import 'c_CupertinoActivityIndicator.dart';
import 'c_CupertinoAlertDialog.dart';
import 'c_CupertinoButton.dart';
import 'c_CupertinoContextMenu.dart';
import 'c_CupertinoDatePicker.dart';
import 'c_CupertinoFullscreenDialogTransition.dart';
import 'c_CupertinoNavigationBar.dart';
import 'c_CupertinoPicker.dart';
import 'c_CupertinoScrollBar.dart';
import 'c_CupertinoSegmentedControl.dart';
import 'c_CupertinoSlider.dart';
import 'c_CupertinoSlidingSegmentedControl.dart';
import 'c_CupertinoSliverRefreshControl.dart';
import 'c_CupertinoSliverRefreshControl2.dart';
import 'c_CupertinoSwitch.dart';
import 'c_CupertinoTabBar.dart';
import 'c_CupertinoTabView.dart';
import 'c_CupertinoTextField.dart';
import 'c_CupertinoTheme.dart';
import 'c_CupertinoTimerPicker.dart';
import 'c_CustomClipper.dart';
import 'c_CustomMultiChildLayout.dart';
import 'c_CustomPaint.dart';
import 'c_CustomScrollView.dart';
import 'c_CustomSingleChildLayout.dart';

class c_homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('C'),
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
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Card'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => c_Card()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Center'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => c_Center()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CheckBox'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CheckBox()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CheckedModeBanner'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CheckedModeBanner()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Chip'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => c_Chip()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CircleAvatar'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CircleAvatar()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CircleBorder'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CircleBorder()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('ColorFiltered'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_ColorFiltered()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Column'),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => c_Column()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('ConstraninedBox'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_ConstraninedBox()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('Container'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_Container()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('ContinuousRectangleBorder'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_ContinuousRectangleBorder()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoActionSheet'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => a_CupertinoActionSheet()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoActivityIndicator'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  a_CupertinoActivityIndicator()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoAlertDialog'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoAlertDialog()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoButton'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoButton()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoContextMenu'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoContextMenu()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoDatePicker'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoDatePicker()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoFullscreenDialogTransition'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoFullscreenDialogTransition()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoNavigationBar'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoNavigationBar()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoPicker'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoPicker()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoScrollBar'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoScrollBar()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSegmentedControl'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoSegmentedControl()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSlider'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoSlider()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSlidingSegmentedControl'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoSlidingSegmentedControl()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSliverRefreshControl'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoSliverRefreshControl()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSliverRefreshControl2'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CupertinoSliverRefreshControl2()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoSwitch'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoSwitch()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoTabBar'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoTabBar()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoTabView'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoTabView()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoTextField'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoTextField()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoTheme'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoTheme()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CupertinoTimerPicker'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CupertinoTimerPicker()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CustomClipper'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CustomClipper()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CustomMultiChildLayout'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CustomMultiChildLayout()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CustomPaint'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CustomPaint()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CustomScrollView'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => c_CustomScrollView()));
                    },
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 60,
                  child: RaisedButton(
                    child: Text('CustomSingleChildLayout'),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  c_CustomSingleChildLayout()));
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
