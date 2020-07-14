import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Slider extends StatefulWidget {
  @override
  s_SliderState createState() {
    return s_SliderState();
  }
}

class s_SliderState extends State<s_Slider> {
  double _sliderValue1 = 0;
  double _sliderValue2 = 0;
  double _sliderValue3 = 0;
  double _sliderValue4 = 0;
  RangeValues _rangeValues = RangeValues(0, 1);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
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
              child: Slider(
                value: _sliderValue1,
                onChanged: (v) {
                  setState(() {
                    _sliderValue1 = v;
                  });
                },
              ),
            ),
            Expanded(
              child: Slider(
                value: _sliderValue2,
                divisions: 5,
                label: '$_sliderValue2',
                onChanged: (v) {
                  setState(() {
                    _sliderValue2 = v;
                  });
                },
              ),
            ),
            Expanded(
              child: Slider(
                activeColor: Colors.pink,
                inactiveColor: Colors.blueGrey,
                value: _sliderValue3,
                divisions: 5,
                label: '$_sliderValue3',
                onChanged: (v) {
                  setState(() {
                    _sliderValue3 = v;
                  });
                },
              ),
            ),
            Expanded(
              child: RangeSlider(
                values: _rangeValues,
                onChanged: (v) {
                  setState(() {
                    _rangeValues = v;
                  });
                },
              ),
            ),
            Expanded(
              child: CupertinoSlider(
                value: _sliderValue4,
                onChanged: (v) {
                  setState(() {
                    _sliderValue4 = v;
                  });
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
