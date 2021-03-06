import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class d_DayPicker extends StatefulWidget {
  @override
  d_DayPickerState createState() {
    return d_DayPickerState();
  }
}

class d_DayPickerState extends State<d_DayPicker> {
  DateTime _selectDate1 = DateTime.now();
  DateTime _selectDate2 = DateTime.now();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('DayPicker'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            width: 200,
            height: 200,
            child: YearPicker(
              selectedDate: _selectDate1,
              onChanged: (date) {
                setState(() {
                  _selectDate1 = date;
                });
              },
              firstDate: DateTime(1989, 1),
              lastDate: DateTime(2050, 12),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          Container(
            child: MonthPicker(
              selectedDate: _selectDate2,
              onChanged: (data) {
                setState(() {
                  _selectDate2 = data;
                });
              },
              firstDate: DateTime(1990, 1),
              lastDate: DateTime(2050, 12),
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Text('showDatePicker1'),
            onPressed: () async {
              var result = await showDatePicker(
                  context: context,
                  initialDate: DateTime.now(),
                  firstDate: DateTime(2020),
                  lastDate: DateTime(2050));
            },
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Text('showTimePicker2'),
            onPressed: () async {
              showTimePicker(context: context, initialTime: TimeOfDay.now());
            },
          ),
          SizedBox(
            height: 50,
          ),
          Divider(
            height: 1,
            color: Colors.black,
          ),
          SizedBox(
            height: 50,
          ),
          RaisedButton(
            child: Text('showTimePicker3'),
            onPressed: () async {
              showTimePicker(
                context: context,
                initialTime: TimeOfDay.now(),
                builder: (context, child) {
                  return MediaQuery(
                    data: MediaQuery.of(context)
                        .copyWith(alwaysUse24HourFormat: true),
                    child: child,
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
