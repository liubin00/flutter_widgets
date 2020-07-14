import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class t_ToggleButtons extends StatefulWidget {
  @override
  t_ToggleButtonsState createState() {
    return t_ToggleButtonsState();
  }
}

class t_ToggleButtonsState extends State<t_ToggleButtons> {
  List<bool> _selecteds = [false, false, true];
  List<bool> _selecteds1 = [false, false, true];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ToggleButtons'),
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
              height: 50,
              child: ToggleButtons(
                isSelected: _selecteds,
                children: <Widget>[
                  Icon(Icons.smartphone),
                  Icon(Icons.star_half),
                  Icon(Icons.format_align_right),
                ],
                onPressed: (index) {
                  setState(() {
                    _selecteds[index] = !_selecteds[index];
                  });
                },
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              child: ToggleButtons(
                renderBorder: false,
                color: Colors.grey,
                selectedColor: Colors.orange,
                fillColor: Colors.red,
                isSelected: _selecteds1,
                children: <Widget>[
                  Icon(Icons.smartphone),
                  Icon(Icons.star_half),
                  Icon(Icons.format_align_right),
                ],
                onPressed: (index) {
                  setState(() {
                    _selecteds1[index] = !_selecteds1[index];
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
