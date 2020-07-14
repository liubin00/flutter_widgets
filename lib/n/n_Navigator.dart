import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class n_Navigator extends StatefulWidget {
  @override
  n_NavigatorState createState() {
    return n_NavigatorState();
  }
}

class n_NavigatorState extends State<n_Navigator> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigator'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              height: 350,
              width: 300,
              child: Navigator(
                initialRoute: '/',
                onGenerateRoute: (RouteSettings settings) {
                  WidgetBuilder builder;
                  switch (settings.name) {
                    case '/':
                      builder = (context) => PageC();
                  }
                  return MaterialPageRoute(builder: builder);
                },
              ),
            ),
            Container(
              height: 300,
              child: IndexedStack(
                index: _currentIndex,
                children: <Widget>[
                  TabNavigator(0),
                  TabNavigator(1),
                  TabNavigator(2)
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        currentIndex: _currentIndex,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(title: Text('测试5'), icon: Icon(Icons.home)),
          BottomNavigationBarItem(title: Text('测试6'), icon: Icon(Icons.title)),
          BottomNavigationBarItem(title: Text('测试7'), icon: Icon(Icons.repeat)),
        ],
      ),
    );
  }
}

class PageC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card(
        child: Column(
          children: <Widget>[
            _buildItem(Icons.clear, '测试1', '测试2'),
            Divider(),
            _buildItem(
              Icons.access_alarm,
              '测试3',
              '测试4',
              showArrow: true,
              onPress: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PageD();
                }));
              },
            )
          ],
        ),
      ),
    );
  }

  _buildItem(IconData iconData, String title, String content,
      {bool showArrow = false, Function onPress}) {
    return Row(
      children: <Widget>[
        Icon(iconData),
        SizedBox(
          width: 20,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(fontSize: 18),
              ),
              Text(
                content,
                style: TextStyle(
                    color: Colors.black.withOpacity(.5), fontSize: 14),
              ),
            ],
          ),
        ),
        !showArrow
            ? Container()
            : IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                iconSize: 16,
                onPressed: onPress,
              )
      ],
    );
  }
}

class PageD extends StatelessWidget {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 250,
      color: Colors.grey.withOpacity(.5),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back_ios),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
              Text('返回'),
              SizedBox(
                width: 30,
              ),
              Text('举报')
            ],
          ),
        ],
      ),
    );
  }
}

class TabNavigator extends StatelessWidget {
  final int index;

  TabNavigator(this.index);

  @override
  Widget build(BuildContext context) {
    return Navigator(
      initialRoute: '/',
      onGenerateRoute: (RouteSettings settings) {
        WidgetBuilder builder;
        switch (settings.name) {
          case '/':
            builder = (context) => ListPage(index);
            break;
        }
        return MaterialPageRoute(builder: builder);
      },
    );
  }
}

class ListPage extends StatelessWidget {
  final int index;

  ListPage(this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text('$index'),
          onPressed: () {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return DetailPage();
            }));
          },
        ),
      ),
    );
  }
}

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text('DetailPage'),
      ),
    );
  }
}
