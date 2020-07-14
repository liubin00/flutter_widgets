import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class r_ReorderableListView extends StatefulWidget {
  @override
  r_ReorderableListViewState createState() {
    return r_ReorderableListViewState();
  }
}

class r_ReorderableListViewState extends State<r_ReorderableListView> {
  List<String> items = List.generate(20, (index) => '$index');

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ReorderableListView'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: ReorderableListView(
          header: Text(
            '测试',
            style: TextStyle(color: Colors.red, fontSize: 20),
          ),
//          scrollDirection: Axis.horizontal,
          children: <Widget>[
            for (String item in items)
              Container(
                key: ValueKey(item),
                height: 100,
//                width: 100,
                margin: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                decoration: BoxDecoration(
                  color: Colors
                      .primaries[int.parse(item) % Colors.primaries.length],
                  borderRadius: BorderRadius.circular(10),
                ),
              )
          ],
          onReorder: (int oldIndex, int newIndex) {
            if (oldIndex < newIndex) {
              newIndex -= 1;
            }
            var child = items.removeAt(oldIndex);
            items.insert(newIndex, child);
            setState(() {});
          },
        ),
      ),
    );
  }
}
