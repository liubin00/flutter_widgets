import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class l_ListWheelSCrollView extends StatefulWidget {
  @override
  l_ListWheelSCrollViewState createState() {
    return l_ListWheelSCrollViewState();
  }
}

class l_ListWheelSCrollViewState extends State<l_ListWheelSCrollView> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ListWheelScollView'),
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
              child: ListWheelScrollView(
                itemExtent: 150,
                children: List.generate(8, (index) {
                  return Container(
                    height: 30,
                    color: Colors.primaries[index],
                  );
                }),
              ),
            ),
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 150,
                offAxisFraction: 13,
                children: List.generate(8, (index) {
                  return Container(
                    height: 30,
                    color: Colors.primaries[index],
                  );
                }),
              ),
            ),
            Expanded(
              child: ListWheelScrollView(
                itemExtent: 150,
                magnification: 1.5,
                useMagnifier: true,
                children: List.generate(8, (index) {
                  return Container(
                    height: 30,
                    color: Colors.primaries[index],
                  );
                }),
              ),
            )
          ],
        ),
      ),
    );
  }
}
