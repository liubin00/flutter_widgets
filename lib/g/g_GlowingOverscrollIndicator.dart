import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class g_GlowingOverscrollIndicator extends StatefulWidget {
  @override
  g_GlowingOverscrollIndicatorState createState() {
    return g_GlowingOverscrollIndicatorState();
  }
}

class g_GlowingOverscrollIndicatorState
    extends State<g_GlowingOverscrollIndicator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('GlowingOverscrollIndicator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ScrollConfiguration(
        behavior: MyScrollBehavior(),
        child: ListView.builder(
          itemBuilder: (BuildContext conetxt, int index) {
            return Text('Item$index');
          },
          shrinkWrap: true,
          itemCount: 50,
          itemExtent: 50,
        ),
      ),
    );
  }
}

class MyScrollBehavior extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection) {
    return GlowingOverscrollIndicator(
      child: child,
      axisDirection: axisDirection,
      color: Colors.blue,
    );
  }

  @override
  ScrollPhysics getScrollPhysics(BuildContext context) {
    return ClampingScrollPhysics();
  }
}
