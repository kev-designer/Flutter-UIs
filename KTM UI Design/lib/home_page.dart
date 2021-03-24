import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ktm_demo/card_details.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  child: SvgPicture.asset(
                    "assets/menu.svg",
                    height: 26,
                  ),
                ),
                Container(
                  child: Image(
                    image: AssetImage(
                      "assets/logo.png",
                    ),
                    height: 60,
                    width: 100,
                  ),
                ),
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(100),
                    image: DecorationImage(
                      image: AssetImage("assets/profile.jpg"),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Text(
                "Hi, Kevin",
                style:
                    GoogleFonts.lato(fontSize: 26, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              height: 52,
              width: 400,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(
                  color: Color(0xffD1D1D1),
                  width: 1.0,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 1),
                child: Row(
                  children: [
                    Container(
                      child: SvgPicture.asset("assets/search.svg",
                          height: 26, color: Color(0xffd1d1d1)),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Text(
                      "Search for bikes..",
                      style: GoogleFonts.lato(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffd1d1d1),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Stack(
              children: [
                CardDetails(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
