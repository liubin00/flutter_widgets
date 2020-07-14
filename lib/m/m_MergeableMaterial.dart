import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_MergeableMaterial extends StatefulWidget {
  @override
  m_MergeableMaterialState createState() {
    return m_MergeableMaterialState();
  }
}

class m_MergeableMaterialState extends State<m_MergeableMaterial> {
  List<MergeableMaterialItem> _items = [];
  var _count = 0;
  bool _expand = false;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('MergeableMaterial'),
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
              child: SingleChildScrollView(
                child: MergeableMaterial(
                  children: [
                    MaterialSlice(
                      key: ValueKey(1),
                      child: Container(
                        height: 45,
                        color: Colors.primaries[1 % Colors.primaries.length],
                      ),
                    ),
                    MaterialGap(key: ValueKey(2)),
                    MaterialSlice(
                        key: ValueKey(3),
                        child: Container(
                          height: 45,
                          color: Colors.primaries[1 % Colors.primaries.length],
                        )),
                    MaterialGap(key: ValueKey(4)),
                    MaterialSlice(
                        key: ValueKey(5),
                        child: Container(
                          height: 45,
                          color: Colors.primaries[1 % Colors.primaries.length],
                        ))
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Container(
                    child: Column(
                      children: <Widget>[
                        RaisedButton(
                          child: Text('增加'),
                          onPressed: () {
                            setState(
                              () {
                                _count = _count + 1;
                              },
                            );
                          },
                        ),
                        RaisedButton(
                          child: Text('删除'),                    onPressed: (){},
                        ),
                        _add(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(),
            ),
            Expanded(
              child: ListView(
                children: [
                  Column(
                    children: <Widget>[
                      Container(
                        height: 45,
                        color: Colors.green,
                        child: IconButton(
                          icon: Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            setState(() {
                              _expand = !_expand;
                            });
                          },
                        ),
                      ),
                      _expand
                          ? MergeableMaterial(
                              hasDividers: true,
                              elevation: 24,
                              children: [
                                MaterialSlice(
                                  key: ValueKey(1),
                                  child: Container(
                                    height: 200,
                                    color: Colors.green,
                                  ),
                                )
                              ],
                            )
                          : Container(),
                      Container(
                        height: 45,
                        color: Colors.red,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _add() {
    List.generate(_count, (index) {
      _items.add(MaterialSlice(
          key: ValueKey(index * 2),
          child: Container(
            height: 45,
            color: Colors.primaries[index % Colors.primaries.length],
          )));
    });
    return SingleChildScrollView(
      child: MergeableMaterial(
        children: _items,
      ),
    );
  }
}
