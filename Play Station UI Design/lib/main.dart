import 'package:flutter/material.dart';
import 'package:play_station/main_page.dart';

void main() {
  runApp(
    MaterialApp(
      home: PlayStation(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class PlayStation extends StatefulWidget {
  @override
  _PlayStationState createState() => _PlayStationState();
}

class _PlayStationState extends State<PlayStation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(child: MainPage()));
  }
}
