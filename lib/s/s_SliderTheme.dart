import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_SliderTheme extends StatefulWidget {
  @override
  s_SliderThemeState createState() {
    return s_SliderThemeState();
  }
}

class s_SliderThemeState extends State<s_SliderTheme> {
  var _slideValue = 0.1;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SliderTheme'),
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
              child: SliderTheme(
                data: SliderTheme.of(context)
                    .copyWith(activeTickMarkColor: Colors.grey),
                child: Slider(
                  value: .5,
                  onChanged: (value) {},
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                    trackHeight: 3,
                    activeTrackColor: Colors.red,
                    inactiveTrackColor: Colors.green),
                child: Slider(
                  value: .5,
                  onChanged: (value) {},
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(

                data: SliderTheme.of(context).copyWith(
                    disabledActiveTrackColor: Colors.green,
                    disabledInactiveTrackColor: Colors.red),
                child: Slider(
                  value: .5,
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  trackHeight: 8,
                  disabledActiveTrackColor: Colors.green,
                  disabledInactiveTrackColor: Colors.red,
                ),
                child: Slider(
                  value: .5,
                  divisions: 4,
                  onChanged: (value) {},
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbColor: Colors.red,
                  thumbShape: RoundSliderThumbShape(enabledThumbRadius: 20),
                  disabledThumbColor: Colors.yellow,
                ),
                child: Slider(
                  value: .5,
                  onChanged: (value) {},
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  valueIndicatorColor: Colors.red,
                ),
                child: Slider(
                  value: _slideValue,
                  label: '$_slideValue',
                  divisions: 5,
                  onChanged: (value) {
                    setState(() {
                      _slideValue = value;
                    });
                  },
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  thumbSelector: (TextDirection textDirection,
                      RangeValues values,
                      double tapValue,
                      Size thumbSize,
                      Size trackSize,
                      double dx) {
                    return Thumb.start;
                  },
                ),
                child: RangeSlider(
                  values: RangeValues(0.2, 1.0),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            ),
            Expanded(
              child: SliderTheme(
                data: SliderTheme.of(context)
                    .copyWith(overlayColor: Colors.red.withOpacity(.5)),
                child: RangeSlider(
                  values: RangeValues(0.2, 1.0),
                  onChanged: (value) {
                    setState(() {});
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
