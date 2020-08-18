import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_Flow extends StatefulWidget {
  @override
  f_FlowState createState() {
    return f_FlowState();
  }
}

class f_FlowState extends State<f_Flow>
    with SingleTickerProviderStateMixin, TickerProviderStateMixin {
  AnimationController _animationController;
  AnimationController _animationController1;
  AnimationController _animationController2;
  IconData lastTapped = Icons.notifications_paused;
  final List<IconData> menuItems = <IconData>[
    //菜单的Icon
    Icons.home,
    Icons.new_releases,
    Icons.notifications,
    Icons.settings,
    Icons.menu,
  ];

  @override
  void dispose() {
    super.dispose();
    _animationController2.dispose();
    _animationController1.dispose();
    _animationController.dispose();
  }

  void _updateMenu(IconData icon) {
    if (icon != Icons.menu) {
      setState(() => lastTapped = icon);
    } else {
      _animationController.status == AnimationStatus.completed
          ? _animationController.reverse() //展开和收拢的效果
          : _animationController.forward();
    }
  }

  List<Widget> _build1() {
    return List.generate(
        15,
        (index) => Container(
                child: Icon(
              index.isEven ? Icons.timer : Icons.ac_unit,
              color: Colors.primaries[index % Colors.primaries.length],
            )));
  }

  List<Widget> _build2() {
    return List.generate(
        5,
        (index) => Container(
              child: Icon(
                index.isEven ? Icons.timer : Icons.ac_unit,
                color: Colors.primaries[index % Colors.primaries.length],
              ),
            ));
  }

  @override
  void initState() {
    super.initState();
    _animationController2 = AnimationController(
      //初始化动画变量
        lowerBound: 0,
        upperBound: 80,
        duration: Duration(milliseconds: 300),
        vsync: this);
    _animationController2.addListener(() => setState(() {}));

    _animationController1 = AnimationController(
        //初始化动画变量
        lowerBound: 0,
        upperBound: 80,
        duration: Duration(seconds: 3),
        vsync: this);
    _animationController1.addListener(() => setState(() {}));

    _animationController = AnimationController(
      //必须初始化动画变量
      duration: const Duration(milliseconds: 250), //动画时长250毫秒
      vsync: this, //SingleTickerProviderStateMixin的作用
    );
  }

//生成Popmenu数据
  Widget flowMenuItem(IconData icon) {
    final double buttonDiameter =
        MediaQuery.of(context).size.width * 2 / (menuItems.length * 3);
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: RawMaterialButton(
        fillColor: lastTapped == icon ? Colors.amber[700] : Colors.blue,
        splashColor: Colors.amber[100],
        shape: CircleBorder(),
        constraints: BoxConstraints.tight(Size(buttonDiameter, buttonDiameter)),
        onPressed: () {
          _updateMenu(icon);
        },
        child: Icon(icon, color: Colors.white, size: 30.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Flow'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Container(
                  width: 500,
                  height: 300,
                  child: Center(
                    child: Flow(
                      delegate: FlowMenuDelegate(animation: _animationController),
                      children: menuItems
                          .map<Widget>((IconData icon) => flowMenuItem(icon))
                          .toList(),
                    ),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Container(
                  width: 500,
                  height: 205,
                  child: Center(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          //点击后让动画可前行或回退
                          _animationController1.status == AnimationStatus.completed
                              ? _animationController1.reverse()
                              : _animationController1.forward();
                        });
                      },
                      child: Container(
                        color: Colors.blueAccent.withOpacity(0.4),
                        width: 200,
                        height: 200,
                        child: Flow(
                          delegate: FlowAnimatedCircle(_animationController1.value),
                          children: _build1(),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  width: 500,
                  height: 300,
                  child: Stack(
                    children: <Widget>[
                      Positioned.fill(
                        child: Flow(
                          delegate: FlowAnimatedCircle(_animationController2.value),
                          children: _build2(),
                        ),
                      ),
                      Positioned.fill(
                        child: IconButton(
                          icon: Icon(Icons.menu),
                          onPressed: () {
                            setState(() {
                              //点击后让动画可前行或回退
                              _animationController2.status ==
                                  AnimationStatus.completed
                                  ? _animationController2.reverse()
                                  : _animationController2.forward();
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class FlowMenuDelegate extends FlowDelegate {
  FlowMenuDelegate({this.animation}) : super(repaint: animation);
  final Animation<double> animation;

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 50.0; //起始位置
    double y = 50.0; //横向展开,y不变
    for (int i = 0; i < context.childCount; ++i) {
      x = context.getChildSize(i).width * i * animation.value;
      context.paintChild(
        i,
        transform: Matrix4.translationValues(x, y, 0),
      );
    }
  }

  @override
  bool shouldRepaint(FlowMenuDelegate oldDelegate) =>
      animation != oldDelegate.animation;
}

class FlowAnimatedCircle extends FlowDelegate {
  final double radius; //绑定半径,让圆动起来
  FlowAnimatedCircle(this.radius);

  @override
  void paintChildren(FlowPaintingContext context) {
    double x = 0; //开始(0,0)在父组件的中心
    double y = 0;
    for (int i = 0; i < context.childCount; i++) {
      x = radius * cos(i * 2 * pi / (context.childCount - 1)); //根据数学得出坐标
      y = radius * sin(i * 2 * pi / (context.childCount - 1)); //根据数学得出坐标
      context.paintChild(i, transform: Matrix4.translationValues(x, y, 0));
    } //使用Matrix定位每个子组件
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) => true;
}

class FlowAnimatedCircle1 extends FlowDelegate {
  final double radius; //绑定半径,让圆动起来
  FlowAnimatedCircle1(this.radius);

  @override
  void paintChildren(FlowPaintingContext context) {
    if (radius == 0) {
      return;
    }
    double x = 0; //开始(0,0)在父组件的中心
    double y = 0;
    for (int i = 0; i < context.childCount; i++) {
      x = radius * cos(i * pi / (context.childCount - 1)); //根据数学得出坐标
      y = radius * sin(i * pi / (context.childCount - 1)); //根据数学得出坐标
      context.paintChild(i, transform: Matrix4.translationValues(x, -y, 0));
    } //使用Matrix定位每个子组件
  }

  @override
  bool shouldRepaint(FlowDelegate oldDelegate) => true;
}
