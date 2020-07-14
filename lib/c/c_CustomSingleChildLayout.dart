import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CustomSingleChildLayout extends StatefulWidget {
  @override
  c_CustomSingleChildLayoutState createState() {
    return c_CustomSingleChildLayoutState();
  }
}

class c_CustomSingleChildLayoutState extends State<c_CustomSingleChildLayout>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomSingleChildLayout'),
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
//            Container(
//              height: 200,
//              width: 200,
//              color: Colors.blue,
//              child: CustomSingleChildLayout(
//                delegate: MySingleChildLayoutDelegate(
//                  offset: Offset(20, 20),
//                ),
//                child: Container(
//                  color: Colors.red,
//                ),
//              ),
//            )
          ],
        ),
      ),
    );
  }
}

abstract class SingleChildLayoutDelegate {
  /// Creates a layout delegate.
  ///
  /// The layout will update whenever [relayout] notifies its listeners.
  const SingleChildLayoutDelegate({ Listenable relayout }) : _relayout = relayout;

  final Listenable _relayout;
  /// 返回控件的大小，默认是尽可能大。
  Size getSize(BoxConstraints constraints) => constraints.biggest;

  /// 返回子组件的约束条件。
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) => constraints;

  /// 返回子组件的位置
  Offset getPositionForChild(Size size, Size childSize) => Offset.zero;

  /// 是否重新布局，此方法必须重写
  bool shouldRelayout(covariant SingleChildLayoutDelegate oldDelegate);
}


class MySingleChildLayoutDelegate extends SingleChildLayoutDelegate {
  MySingleChildLayoutDelegate(this.position);

  final Offset position;

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    return Offset(position.dx, position.dy);
  }

  @override
  bool shouldRelayout(MySingleChildLayoutDelegate oldDelegate) {
    return oldDelegate.position != position;
  }
}
