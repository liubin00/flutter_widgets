import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class h_Hero extends StatefulWidget {
  @override
  h_HeroState createState() {
    return h_HeroState();
  }
}

class h_HeroState extends State<h_Hero> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Hero'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3, crossAxisSpacing: 5, mainAxisSpacing: 3),
        children: List.generate(10, (index) {
          if (index == 6) {
            return InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    new MaterialPageRoute(
                        builder: (context) => new _heroDemo()));
              },
              child: Hero(
                tag: 'hero',
                child: Container(
                  child: Image.asset(
                    'img/1.jpg',
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            );
          }
          return Container(
            color: Colors.red,
          );
        }),
      ),
    );
  }
}

class _heroDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        alignment: Alignment.center,
        child: Hero(
          tag: 'hero',
          child: Container(
            child: Image.asset('img/1.jpg'),
          ),
        ),
      ),
    );
  }
}
