import 'package:animated_menubar/card_page.dart';
import 'package:animated_menubar/transcation_history.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  double xOffset = 0;
  double yOffset = 0;
  double scaleFactore = 1;
  bool isDrawerActive = false;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
      ),
      transform: Matrix4.translationValues(xOffset, yOffset, 0)
        ..scale(scaleFactore),
      duration: Duration(microseconds: 200, milliseconds: 200),
      child: Scaffold(
        backgroundColor: Color(0xffF5F5F5),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0, left: 16, right: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawerActive
                      ? Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.arrow_back_ios,
                              size: 32,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                xOffset = 0;
                                yOffset = 0;
                                scaleFactore = 1;
                                isDrawerActive = false;
                              });
                            },
                          ),
                        )
                      : Container(
                          child: IconButton(
                            icon: Icon(
                              Icons.menu,
                              size: 32,
                              color: Colors.black,
                            ),
                            onPressed: () {
                              setState(() {
                                xOffset = 270;
                                yOffset = 80;
                                scaleFactore = 0.85;
                                isDrawerActive = true;
                              });
                            },
                          ),
                        ),
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      image: DecorationImage(
                          image: AssetImage("assets/profile.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
            ),
            CardPage(),
            SizedBox(
              height: 20,
            ),
            TranscationHistory(),
          ],
        ),
      ),
    );
  }
}
