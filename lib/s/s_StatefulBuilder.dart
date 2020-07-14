import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_StatefulBuilder extends StatefulWidget {
  @override
  s_StatefulBuilderState createState() {
    return s_StatefulBuilderState();
  }
}

class s_StatefulBuilderState extends State<s_StatefulBuilder> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('StatefulBuilder'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        child: Center(
          child: RaisedButton(
            child: Text('测试'),
            onPressed: () {
              showDialog<void>(
                context: context,
                builder: (BuildContext context) {
                  int selectedRadio = 0;
                  return AlertDialog(
                    content: StatefulBuilder(
                      builder: (BuildContext context, StateSetter setState) {
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: List<Widget>.generate(4, (index) {
                            return Radio<int>(
                              value: index,
                              groupValue: selectedRadio,
                              onChanged: (int value) {
                                setState(() {
                                  selectedRadio = value;
                                });
                              },
                            );
                          }),
                        );
                      },
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
