import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class p_PageView extends StatefulWidget {
  @override
  p_PageViewState createState() {
    return p_PageViewState();
  }
}

class p_PageViewState extends State<p_PageView> {
  List<String> pageList = ['Page1', 'Page2', 'Page3'];
  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('PageView'),
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
              child: Container(
                height: 300,
                child: PageView(
//                controller: PageController(viewportFraction: 0.9),
//                //水平或者竖直
//                scrollDirection: Axis.vertical,
                  children: <Widget>[
                    Page1(),
                    Page2(),
                    Page3(),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Stack(
                  children: <Widget>[
                    PageView.builder(
                      itemBuilder: (context, index) {
                        return _buildPageViewItem(
                            pageList[index % (pageList.length)]);
                      },
                      onPageChanged: (int index) {
                        setState(() {
                          _currentPageIndex = index % (pageList.length);
                        });
                      },
                      itemCount: 10000,
                    ),
                    Positioned(
                      bottom: 10,
                      left: 0,
                      right: 0,
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: List.generate(pageList.length, (i) {
                            return Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _currentPageIndex == i
                                      ? Colors.blue
                                      : Colors.grey),
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }


  _buildPageViewItem(String txt, {Color color = Colors.red}) {
    return Container(
      color: color,
      alignment: Alignment.center,
      child: Text(
        txt,
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.blue,
      child: Text('Page1'),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.red,
      child: Text('Page2'),
    );
  }
}

class Page3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.green,
      child: Text('Page3'),
    );
  }
}
