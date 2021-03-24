import 'package:flutter/material.dart';

import 'package:flutter/services.dart';
import 'package:netflix_project/views/home/homepage.dart';
import 'package:netflix_project/views/nav_bar.dart';

//import 'profilepage.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(MaterialApp(
    home: MyApp(),
    title: "Netflix",
    theme: ThemeData(
      primaryColor: Color(0xff070606),
      buttonColor: Color(0xffE80B18),
      bottomAppBarColor: Color(0xff212121),
      cardColor: Color(0xffFFFFFF),
    ),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NavBarScreen(),
      //bottomNavigationBar: NavBarScreen(),
    );
  }
}
