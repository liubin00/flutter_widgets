import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class f_FutureBuilder extends StatefulWidget {
  @override
  f_FutureBuilderState createState() {
    return f_FutureBuilderState();
  }
}

class f_FutureBuilderState extends State<f_FutureBuilder> {
  @override
  Widget build(BuildContext context) {
    var _future = Future.delayed(Duration(seconds: 2), () {
      return Future.error('');
    });
    var _future1 = Future.delayed(Duration(seconds: 4), () {
      return '123';
    });
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('FutureBuilder'),
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
              width: 300,
              height: 300,
              child: FutureBuilder(
                future: _future,
                builder: (context, snapshot) {
                  var widget;
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      widget = Icon(
                        Icons.error,
                        color: Colors.red,
                        size: 48,
                      );
                    } else {
                      widget = Icon(
                        Icons.check_circle,
                        color: Colors.green,
                        size: 36,
                      );
                    }
                  } else {
                    widget = Padding(
                      padding: EdgeInsets.all(20),
                      child: CircularProgressIndicator(),
                    );
                  }
                  return Center(
                    child: Container(
                      height: 100,
                      width: 100,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                        border: Border.all(color: Colors.grey),
                      ),
                      child: widget,
                    ),
                  );
                },
              ),
            ),
            Container(
              height: 300,
              width: 300,
              child: FutureBuilder(
                future: _future1,
                builder: (context, snapshot) {
                  var widget;
                  if (snapshot.connectionState == ConnectionState.done) {
                    if (snapshot.hasError) {
                      widget = _loadingErrorWidget();
                    } else {
                      widget = _dataWidget(snapshot.data);
                    }
                  } else {
                    widget = _loadingWidget();
                  }
                  return widget;
                },
              ),
            )
          ],
        ),
      ),
    );
  }

  _loadingErrorWidget() {
    return Center(
      child: Text('数据加载失败，请重试！'),
    );
  }

  _loadingWidget() {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(20),
        child: CircularProgressIndicator(),
      ),
    );
  }

  _dataWidget(data) {
    return ListView.separated(
        itemBuilder: (context, index) {
          return Container(
            height: 60,
            alignment: Alignment.center,
            child: Text(
              '$index',
              style: TextStyle(fontSize: 20),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: 10);
  }
}
