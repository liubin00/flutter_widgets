import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class m_ModalBarrier extends StatefulWidget {
  @override
  m_ModalBarrierState createState() {
    return m_ModalBarrierState();
  }
}

class m_ModalBarrierState extends State<m_ModalBarrier> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('ModalBarrier'),
        leading: IconButton(
          icon: Icon(Icons.chevron_left),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Container(
        alignment: Alignment.center,
        child: Center(
          child: Container(
            height: 100,
            width: 100,
            child: ModalBarrier(
              color: Colors.green.withOpacity(.4),
            ),
          ),
        ),
      ),
    );
  }
}
