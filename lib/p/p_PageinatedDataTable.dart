import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PageinatedData extends StatefulWidget {
  @override
  p_PageinatedDataState createState() {
    return p_PageinatedDataState();
  }
}

class p_PageinatedDataState extends State<p_PageinatedData> {
  List<User> _data = [];
  var _rowsPerPage = 5;
  var _sortAscending = true;

  @override
  void initState() {
    List.generate(100, (index) {
      _data.add(User('测试$index', index % 50, index % 2 == 0 ? '男' : '女'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PageinatedDataTable'),
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
              height: 500,
              child: SingleChildScrollView(
                child: PaginatedDataTable(
                  sortColumnIndex: 2,
                  sortAscending: _sortAscending,
                  rowsPerPage: _rowsPerPage,
                  onRowsPerPageChanged: (v) {
                    setState(() {
                      _rowsPerPage = v;
                    });
                  },
                  onSelectAll: (all) {
                    setState(() {
                      _data.forEach((element) {
                        element.selected = all;
                      });
                    });
                  },
                  availableRowsPerPage: [5, 10, 15, 16],
                  actions: <Widget>[
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {},
                    ),
                    IconButton(
                      icon: Icon(Icons.delete),
                      onPressed: () {},
                    )
                  ],
                  header: Text('header'),
                  columns: [
                    DataColumn(label: Text('姓名')),
                    DataColumn(label: Text('性别')),
                    DataColumn(
                        label: Text('年龄'),
                        onSort: (index, sortAscending) {
                          setState(() {
                            _sortAscending = sortAscending;
                            if (sortAscending) {
                              _data.sort((a, b) => a.age.compareTo(b.age));
                            } else {
                              _data.sort((a, b) => b.age.compareTo(a.age));
                            }
                          });
                        }),
                  ],
                  source: MyDataTableSource(_data),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class User {
  User(this.name, this.age, this.sex, {this.selected = false});

  final String name;
  final int age;
  final String sex;
  bool selected;
}

class MyDataTableSource extends DataTableSource {
  final List<User> data;

  MyDataTableSource(this.data);

  @override
  DataRow getRow(int index) {
    if (index >= data.length) {
      return null;
    }
    return DataRow.byIndex(
      index: index,
      selected: data[index].selected,
      onSelectChanged: (selected) {
        data[index].selected = selected;
        notifyListeners();
      },
      cells: [
        DataCell(Text('${data[index].name}')),
        DataCell(Text('${data[index].sex}')),
        DataCell(Text('${data[index].age}')),
      ],
    );
  }

  @override
  int get selectedRowCount {
    return 0;
  }

  @override
  bool get isRowCountApproximate {
    return false;
  }

  @override
  int get rowCount {
    return data.length;
  }
}
