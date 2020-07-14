import 'package:flutter/material.dart';

class a_ActionChip extends StatefulWidget {
  @override
  a_ActionChipState createState() {
    return a_ActionChipState();
  }
}

class a_ActionChipState extends State<a_ActionChip> {
  bool _selected = false;
  int _selectIndex = 0;
  List<String> _list = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ActionChip"),
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
              child: RawChip(
                label: Text('测试'),
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试1'),
                isEnabled: false,
              ),
            ),
            Container(
              child: RawChip(
                avatar: CircleAvatar(
                  child: Text('测'),
                ),
                label: Text('测试2'),
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试3'),
                labelStyle: TextStyle(color: Colors.red),
                labelPadding: EdgeInsets.symmetric(horizontal: 10),
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试4'),
                onDeleted: () {},
                deleteIcon: Icon(Icons.delete),
                deleteIconColor: Colors.red,
                deleteButtonTooltipMessage: '删除',
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试5'),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                backgroundColor: Colors.blue,
                padding: EdgeInsets.symmetric(vertical: 10),
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试6'),
                elevation: 8,
                shadowColor: Colors.blue,
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试7'),
                selected: _selected,
                onSelected: (v) {
                  setState(() {
                    _selected = v;
                  });
                },
                selectedColor: Colors.pink,
                selectedShadowColor: Colors.grey,
              ),
            ),
            Container(
              child: RawChip(
                label: Text("测试8"),
                selected: true,
                showCheckmark: true,
                checkmarkColor: Colors.green,
              ),
            ),
            Container(
              child: RawChip(
                label: Text('测试9'),
                onPressed: () {},
                pressElevation: 12,
              ),
            ),
            Container(
              child: Wrap(
                spacing: 15,
                children: List.generate(11, (index) {
                  return ChoiceChip(
                    label: Text('测试 $index'),
                    selected: _selectIndex == index,
                    onSelected: (v) {
                      setState(() {
                        _selectIndex = index;
                      });
                    },
                  );
                }).toList(),
              ),
            ),
            Container(
              child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.grey,
              ),
            ),
            Container(
              child: Column(
                children: <Widget>[
                  Wrap(
                    spacing: 15,
                    children: List.generate(12, (index) {
                      return FilterChip(
                        label: Text('测试 $index'),
                        selected: _list.contains('$index'),
                        onSelected: (v) {
                          setState(() {
                            if (v) {
                              _list.add('$index');
                            } else {
                              _list.removeWhere((f) {
                                return f == '$index';
                              });
                            }
                          });
                        },
                      );
                    }).toList(),
                  ),
                  Text("已经选中:${_list.join('-')}")
                ],
              ),
            ),
            Container(
              child: Divider(
                height: 1.0,
                indent: 0.0,
                color: Colors.grey,
              ),
            ),
            Container(
              child: ActionChip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Text('测'),
                ),
                label: Text('测试10'),
                onPressed: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
