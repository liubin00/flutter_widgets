import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class a_AnimatedList extends StatefulWidget {
  @override
  a_AnimatedListState createState() {
    return a_AnimatedListState();
  }
}

class a_AnimatedListState extends State<a_AnimatedList>
    with SingleTickerProviderStateMixin {
  List<int> _list = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    final int _index = _list.length;
    _list.insert(_index, _index);
    _listKey.currentState.insertItem(_index);
  }

  void _removeItem() {
    final int _index = _list.length - 1;
    var item = _list[_index].toString();
    _listKey.currentState.removeItem(
        _index, (context, animation) => _buildItem(item, animation));
    _list.removeAt(_index);
  }

  Widget _buildItem(String _item, Animation _animation) {
    return SizeTransition(
      sizeFactor: _animation,
      child: Card(
        child: ListTile(
          title: Text(
            _item,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('a_AnimatedList'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _list.length,
        itemBuilder: (BuildContext context, int index, Animation animation) {
          return _buildItem(_list[index].toString(), animation);
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'one',
            onPressed: () {
              _addItem();
            },
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 60,
          ),
          FloatingActionButton(
            onPressed: () {
              _removeItem();
            },
            child: Icon(Icons.remove),
          )
        ],
      ),
    );
  }
}
