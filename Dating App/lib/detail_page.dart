import 'package:dating_app/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    children: [
                      Container(
                        height: height * .5,
                        decoration: BoxDecoration(
                          color: Colors.amber,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                          ),
                          image: DecorationImage(
                            image: AssetImage("assets/2.jpeg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 70,
                          left: 20,
                          right: 20,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                                onTap: () {
                                  Navigator.pop(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomePage(),
                                    ),
                                  );
                                },
                                child: SvgPicture.asset("assets/back.svg")),
                            SvgPicture.asset("assets/more.svg"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 20,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: height * .03,
                        ),
                        Text(
                          "Malena Veronica, 23",
                          style: GoogleFonts.lato(
                            fontSize: height * .022,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Text(
                          "Fashion Designer at Victoria's Secret",
                          style: GoogleFonts.lato(
                            fontSize: height * .018,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Text(
                          "69. away",
                          style: GoogleFonts.lato(
                            fontSize: height * .018,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .024,
                        ),
                        Text(
                          "ABOUT ME",
                          style: GoogleFonts.lato(
                            fontSize: height * .022,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Text(
                          "Hey guys, This is Malena. I’m here to find someone for hookup. I’m not interested in something serious. I would love to hear your adventurous story.",
                          style: GoogleFonts.lato(
                            fontSize: height * .019,
                            fontWeight: FontWeight.w400,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .024,
                        ),
                        Text(
                          "INTEREST",
                          style: GoogleFonts.lato(
                            fontSize: height * .022,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff16123D),
                          ),
                        ),
                        SizedBox(
                          height: height * .01,
                        ),
                        Column(
                          children: [
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffFFE9E6),
                                  ),
                                  child: Text(
                                    "Travel",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xffFF6F59),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffE5F7FF),
                                  ),
                                  child: Text(
                                    "Dance",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xff33C0FF),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .28,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffFFF2E5),
                                  ),
                                  child: Text(
                                    "Fitness",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xffFF9933),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height * .01,
                            ),
                            Row(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .34,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffF2E5FF),
                                  ),
                                  child: Text(
                                    "Photography",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xff9933FF),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .24,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffE0FFFF),
                                  ),
                                  child: Text(
                                    "Music",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xff12B2B2),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: width * .02,
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: height * .046,
                                  width: width * .26,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(100),
                                    color: Color(0xffFFE5EE),
                                  ),
                                  child: Text(
                                    "Movie",
                                    style: GoogleFonts.lato(
                                      fontSize: height * .02,
                                      color: Color(0xffFF3377),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: height * .01,
            left: width * .2,
            child: Row(
              children: [
                Container(
                  height: height * .07,
                  width: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff16123D).withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 30,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: SvgPicture.asset('assets/no.svg'),
                  ),
                ),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                  height: height * .07,
                  width: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff16123D).withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 30,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: SvgPicture.asset('assets/star.svg'),
                  ),
                ),
                SizedBox(
                  width: width * .02,
                ),
                Container(
                  height: height * .07,
                  width: 70,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff16123D).withOpacity(0.1),
                        spreadRadius: 0,
                        blurRadius: 30,
                        offset: Offset(0, 8), // changes position of shadow
                      ),
                    ],
                  ),
                  child: RaisedButton(
                    elevation: 0,
                    onPressed: () {},
                    splashColor: Colors.white,
                    highlightColor: Colors.white,
                    color: Colors.white,
                    shape: CircleBorder(),
                    child: SvgPicture.asset(
                      'assets/like.svg',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
