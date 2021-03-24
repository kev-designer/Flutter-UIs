import 'package:flutter/material.dart';
import 'package:ktm_demo/home_page.dart';
import 'package:ktm_demo/nav_bar.dart';

void main() {
  runApp(MaterialApp(
    home: KtmProject(),
    debugShowCheckedModeBanner: false,
  ));
}

class KtmProject extends StatefulWidget {
  @override
  _KtmProjectState createState() => _KtmProjectState();
}

class _KtmProjectState extends State<KtmProject> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomePage(),
      bottomNavigationBar: NavBar(),
    );
  }
}
