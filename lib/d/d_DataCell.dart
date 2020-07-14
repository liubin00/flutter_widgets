import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DataCell extends StatefulWidget {
  @override
  d_DataCellState createState() {
    return d_DataCellState();
  }
}

class d_DataCellState extends State<d_DataCell> {
  List<User> data = [
    User('张三', 12),
    User('李四', 13),
    User('王五', 14),
    User('赵六', 15),
  ];
  var _sortAscending = true;

  _build() {
    List<DataRow> dateRows = [];
    for (int i = 0; i < data.length; i++) {
      dateRows.add(DataRow(
        selected: data[i].selected,
        onSelectChanged: (selected) {
          setState(() {
            data[i].selected = selected;
          });
        },
        cells: [
          DataCell(Text('${data[i].name}'),
              showEditIcon: true, onTap: () {}, placeholder: true),
          DataCell(Text('${data[i].age}')),
        ],
      ));
    }
    return DataTable(columns: [
      DataColumn(label: Text('姓名')),
      DataColumn(
        label: Text('年龄'),
      ),
    ], rows: dateRows);
  }

//  _buildsort() {
//    DataTable(
//        sortColumnIndex: 1,
//        sortAscending: _sortAscending,
//        columns: [
//          DataColumn(label: Text('姓名')),
//          DataColumn(
//              label: Text('年龄'),
//              onSort: (int columnIndex, bool ascending) {
//                setState(() {
//                  _sortAscending = ascending;
//                  if (ascending) {
//                    data.sort((a, b) => a.age.compareTo(b.age));
//                  } else {
//                    data.sort((a, b) => b.age.compareTo(a.age));
//                  }
//                });
//              }),
//        ],
//        rows: data.map((User) {
//          return DataRow(cells: [
//            DataCell(Text('${User.name}')),
//            DataCell(Text('${User.age}')),
//          ]);
//        }).toList());
//  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DataCell'),
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
            Expanded(
              child: DataTable(
                sortColumnIndex: 1,
                sortAscending: true,
                columns: [
                  DataColumn(label: Text('姓名')),
                  DataColumn(label: Text('年龄'), numeric: true, tooltip: '长按提示'),
                ],
                rows: [
                  DataRow(
                      onSelectChanged: (select) {},
                      cells: [
                        DataCell(Text('张三')),
                        DataCell(Text('12')),
                      ],
                      selected: true),
                  DataRow(
                    cells: [
                      DataCell(Text('李四')),
                      DataCell(Text('15')),
                    ],
                  )
                ],
              ),
            ),
            Expanded(
              child: _build(),
            ),
//            Expanded(
//              child: _buildsort(),
//            )
          ],
        ),
      ),
    );
  }
}

class User {
  String name;
  int age;
  bool selected;

  User(this.name, this.age, {this.selected = false});
}
