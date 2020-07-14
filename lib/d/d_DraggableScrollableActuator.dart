import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DraggableScrollableActuator extends StatefulWidget {
  @override
  d_DraggableScrollableActuatorState createState() {
    return d_DraggableScrollableActuatorState();
  }
}

class d_DraggableScrollableActuatorState
    extends State<d_DraggableScrollableActuator> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableScrollableActuator'),
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
            Stack(
              children: [
                Container(
                  height: 600,
                  child: DraggableScrollableActuator(
                    child: DraggableScrollableSheet(
                      initialChildSize: 1.0,
                      minChildSize: 0.6,
                      maxChildSize: 1.0,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          color: Colors.blue[100],
                          child: ListView.builder(
                            controller: scrollController,
                            itemCount: 100,
                            itemBuilder: (BuildContext context, int index) {
                              return ListTile(
                                title: Text('测试 $index'),
                                onTap: () {
                                  DraggableScrollableActuator.reset(context);
                                },
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Text('点击列表回到顶部')
          ],
        ),
      ),
    );
  }
}
