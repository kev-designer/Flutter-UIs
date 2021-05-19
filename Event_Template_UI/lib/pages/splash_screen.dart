import 'dart:async';

import 'package:event_template_app/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 3),
      () => Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (BuildContext context) => LoginScreen()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xff5375AB),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          //LOGO
          Center(
            child: SvgPicture.asset(
              "assets/logo.svg",
              height: height * .2,
            ),
          ),
          SizedBox(
            height: height * .024,
          ),
          //APP NAME
          Text(
            "Event Templates",
            style: GoogleFonts.nunito(
                color: Color(0xffF0F0E4),
                fontSize: height * .032,
                fontWeight: FontWeight.w600),
          )
        ],
      ),
    );
  }
}
