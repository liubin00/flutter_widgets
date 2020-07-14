import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class e_ExpansionPanelList extends StatefulWidget {
  @override
  e_ExpansionPanelListState createState() {
    return e_ExpansionPanelListState();
  }
}

class e_ExpansionPanelListState extends State<e_ExpansionPanelList> {
  List<bool> dataList = List.generate(20, (index) {
    return false;
  }).toList();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ExpansionPanelList'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: SingleChildScrollView(
          child: Container(
            child: _build(),
          ),
        ),
      ),
    );
  }

  _build() {
    return ExpansionPanelList(
      expansionCallback: (index, isExpanded) {
        setState(() {
          dataList[index] = !isExpanded;
        });
      },
      children: dataList.map(
        (value) {
          return ExpansionPanel(
            isExpanded: value,
            headerBuilder: (context, isExpanded) {
              return ListTile(
                title: Text('测试'),
              );
            },
            body: Container(
              height: 100,
              color: Colors.greenAccent,
            ),
          );
        },
      ).toList(),
    );
  }
}
