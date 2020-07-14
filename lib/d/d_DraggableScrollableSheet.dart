import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DraggableScrollableSheet extends StatefulWidget {
  @override
  d_DraggableScrollableSheetState createState() {
    return d_DraggableScrollableSheetState();
  }
}

class d_DraggableScrollableSheetState
    extends State<d_DraggableScrollableSheet> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DraggableScrollableSheet'),
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
              children: <Widget>[
                Column(
                  children: [
                    Image.asset('img/zzz.jpg'),
                    Container(
                      height: 400,
                      color: Colors.grey,
                      alignment: Alignment.center,
                      child: Text(
                        '测试1',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Positioned.fill(
                    child: DraggableScrollableSheet(
                  expand: false,
                  initialChildSize: 0.4,
                  minChildSize: 0.4,
                  maxChildSize: 1,
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
                          );
                        },
                      ),
                    );
                  },
                ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
