import 'package:flutter/material.dart';
import 'list.dart';

void main() {
  runApp(HomePage());
}

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: button_list(),
    );
  }
}
