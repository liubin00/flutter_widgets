import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class s_Stepper extends StatefulWidget {
  @override
  s_StepperState createState() {
    return s_StepperState();
  }
}

class s_StepperState extends State<s_Stepper> {
  int _select = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Stepper'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          Container(
            alignment: Alignment.center,
            child: Column(
              children: <Widget>[
                Stepper(
                  steps: <Step>[
                    Step(
                        title: Text('测试1'),
                        content: Text('测试2'),
                        subtitle: Text('测试7'),
                        state: StepState.error),
                    Step(
                        title: Text('测试3'),
                        content: Text('测试4'),
                        state: StepState.complete),
                    Step(
                      title: Text('测试5'),
                      content: Text('测试6'),
                    )
                  ],
                  onStepTapped: (index) {
                    setState(() {
                      _select = index;
                    });
                  },
                  currentStep: _select,
                  controlsBuilder: (BuildContext context,
                      {VoidCallback onStepContinue,
                      VoidCallback onStepCancel}) {
                    return Row(
                      children: <Widget>[
                        Container(
                          width: 100,
                          height: 100,
                          color: Colors.blue,
                        )
                      ],
                    );
                  },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
