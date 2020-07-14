import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class o_OrientationBuilder extends StatefulWidget {
  @override
  o_OrientationBuilderState createState() {
    return o_OrientationBuilderState();
  }
}

class o_OrientationBuilderState extends State<o_OrientationBuilder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('OrientationBuilder'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: OrientationBuilder(
          builder: (BuildContext context, Orientation orientation) {
            int count = orientation == Orientation.portrait ? 3 : 5;
            return GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: count,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 4),
              itemBuilder: (context, index) {
                return Container(
                  color: Colors.primaries[index % Colors.primaries.length],
                );
              },
              itemCount: 30,
            );
          },
        ),
      ),
    );
  }
}
