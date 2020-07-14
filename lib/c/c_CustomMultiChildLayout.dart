import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_CustomMultiChildLayout extends StatefulWidget {
  @override
  c_CustomMultiChildLayoutState createState() {
    return c_CustomMultiChildLayoutState();
  }
}

class c_CustomMultiChildLayoutState extends State<c_CustomMultiChildLayout> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('CustomMultiChildLayout'),
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
              width: 200,
              height: 200,
              color: Colors.red,
              child: CustomMultiChildLayout(
                delegate: FollowTheLeader(),
                children: <Widget>[
                  LayoutId(
                    id: FollowTheLeaderId.leader,
                    child: Text('测试1'),
                  ),
                  LayoutId(
                    id: FollowTheLeaderId.follower,
                    child: Text('测试2'),
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

enum FollowTheLeaderId { leader, follower }

class FollowTheLeader extends MultiChildLayoutDelegate {
  @override
  void performLayout(Size size) {
    Size leaderSize = Size.zero;
    if (hasChild(FollowTheLeaderId.leader)) {
      leaderSize =
          layoutChild(FollowTheLeaderId.leader, BoxConstraints.loose(size));
      positionChild(FollowTheLeaderId.leader, Offset.zero);
    }

    if (hasChild(FollowTheLeaderId.follower)) {
      Size followerSize =
          layoutChild(FollowTheLeaderId.follower, BoxConstraints.loose(size));
      positionChild(
          FollowTheLeaderId.follower,
          Offset(size.width - followerSize.width,
              size.height - followerSize.height));
    }
  }

  @override
  bool shouldRelayout(MultiChildLayoutDelegate oldDelegate) => false;
}
