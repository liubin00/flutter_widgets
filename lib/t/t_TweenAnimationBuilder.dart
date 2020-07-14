import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_TweenAnimationBuilder extends StatefulWidget {
  @override
  t_TweenAnimationBuilderState createState() {
    return t_TweenAnimationBuilderState();
  }
}

class t_TweenAnimationBuilderState extends State<t_TweenAnimationBuilder> {
  double _value = 200;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('TweenAnimationBuilder'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 100.0, end: _value),
          duration: Duration(seconds: 2),
          curve: Curves.bounceIn,
          builder: (context, value, child) {
            return Container(
              height: value,
              width: value,
              child: child,
            );
          },
          onEnd: () {
            setState(() {
              _value = _value == 200 ? 250 : 200;
            });
          },
          child: Image.asset('img/zzz.jpg'),
        ),
      ),
    );
  }
}
