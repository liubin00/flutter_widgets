import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class w_WillPopScope extends StatefulWidget {
  final String title;

  const w_WillPopScope({Key key, this.title}) : super(key: key);

  @override
  w_WillPopScopeState createState() {
    return w_WillPopScopeState();
  }
}

class w_WillPopScopeState extends State<w_WillPopScope> {
  GlobalKey<NavigatorState> _key = GlobalKey();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('WillPopScope'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          if (_key.currentState.canPop()) {
            _key.currentState.pop();
            return false;
          }
          return true;
        },
        child: Column(
          children: <Widget>[
            Expanded(
              child: Navigator(
                key: _key,
                onGenerateRoute: (RouteSettings settings) {
                  return MaterialPageRoute(builder: (context) {
                    return OnePage();
                  });
                },
              ),
            ),
            Container(
              height: 50,
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text('底部Bar'),
            )
          ],
        ),
      ),
    );
  }
}

class OnePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: RaisedButton(
            child: Text('next page'),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return TwoPage();
              }));
            },
          ),
        ),
      ),
    );
  }
}

class TwoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Text('TwoPage'),
        ),
      ),
    );
  }
}
