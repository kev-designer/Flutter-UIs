import 'package:animated_menubar/drawer_screen.dart';
import 'package:animated_menubar/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MenuBar(),
    debugShowCheckedModeBanner: false,
  ));
}

class MenuBar extends StatefulWidget {
  @override
  _MenuBarState createState() => _MenuBarState();
}

class _MenuBarState extends State<MenuBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DrawerScreen(),
          MainPage(),
        ],
      ),
    );
  }
}
