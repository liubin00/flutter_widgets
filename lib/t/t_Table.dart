import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_Table extends StatefulWidget {
  @override
  t_TableState createState() {
    return t_TableState();
  }
}

class t_TableState extends State<t_Table> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Table'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Table(
        defaultColumnWidth: FixedColumnWidth(100),
        border: TableBorder(
          horizontalInside: BorderSide(color: Colors.red),
          verticalInside: BorderSide(color: Colors.green),
          top: BorderSide(color: Colors.red),
          left: BorderSide(color: Colors.red),
          right: BorderSide(color: Colors.green),
          bottom: BorderSide(color: Colors.red),
        ),
        children: [
          TableRow(
            children: [
              TableCell(
                child: Text('姓名'),
              ),
              TableCell(
                child: Text('性别'),
              ),
              TableCell(
                child: Text('年龄'),
              ),
            ],
          ),
          TableRow(
            children: [
              TableCell(
                child: Text('测试1'),
              ),
              TableCell(
                child: Text('男'),
              ),
              TableCell(
                child: Text('18'),
              ),
            ],
          ),
          TableRow(children: [
            TableCell(
              child: Text('测试2'),
            ),
            TableCell(
              child: Text('男'),
            ),
            TableCell(
              child: Text('17'),
            ),
          ])
        ],
      ),
    );
  }
}
