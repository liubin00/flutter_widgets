import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class c_Chip extends StatefulWidget {
  @override
  c_ChipState createState() {
    return c_ChipState();
  }
}

class c_ChipState extends State<c_Chip> {
  bool _selected = false;
  int _selecteIndex = 0;
  List<String> _filters = [];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Chip'),
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
                RawChip(
                  label: Text('测试1'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  label: Text('测试2'),
                  isEnabled: false,
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  avatar: CircleAvatar(
                    child: Text('测'),
                  ),
                  label: Text('测试3'),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  label: Text('测试4'),
                  labelStyle: TextStyle(color: Colors.blue),
                  labelPadding: EdgeInsets.symmetric(horizontal: 10),
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  label: Text('测试5'),
                  onDeleted: () {},
                  deleteIcon: Icon(Icons.delete),
                  deleteIconColor: Colors.red,
                  deleteButtonTooltipMessage: '删除',
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  label: Text('测试6'),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  backgroundColor: Colors.blue,
                  padding: EdgeInsets.symmetric(vertical: 10),
                  onPressed: () {},
                ),
                SizedBox(
                  height: 30,
                ),
                RawChip(
                  label: Text('测试7'),
                  selected: _selected,
                  onSelected: (v) {
                    setState(() {
                      _selected = !_selected;
                    });
                  },
                  selectedColor: Colors.blue,
                  selectedShadowColor: Colors.red,
                ),
                SizedBox(
                  height: 30,
                ),
                Wrap(
                  spacing: 15,
                  children: List.generate(10, (index) {
                    return ChoiceChip(
                      label: Text('测试 $index'),
                      selected: _selecteIndex == index,
                      onSelected: (v) {
                        setState(() {
                          _selecteIndex = index;
                        });
                      },
                    );
                  }).toList(),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  children: <Widget>[
                    Wrap(
                      spacing: 15,
                      children: List.generate(10, (index) {
                        return FilterChip(
                          label: Text('测试 $index'),
                          selected: _filters.contains('$index'),
                          onSelected: (v) {
                            setState(() {
                              if (v) {
                                _filters.add('$index');
                              } else {
                                _filters.removeWhere((f) {
                                  return f == '$index';
                                });
                              }
                            });
                          },
                        );
                      }).toList(),
                    ),
                    Text('选中:${_filters.join(',')}')
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
