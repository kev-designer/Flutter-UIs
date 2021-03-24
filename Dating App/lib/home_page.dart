import 'package:dating_app/detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double height = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Scaffold(
          body: Padding(
            padding: const EdgeInsets.only(left: 20, top: 30, right: 20),
            child: Column(
              children: [
                Container(
                  height: height * .1,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SvgPicture.asset(
                        'assets/user.svg',
                      ),
                      Text(
                        "For You",
                        style: GoogleFonts.lato(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff4E4B6F),
                        ),
                      ),
                      SvgPicture.asset('assets/chat.svg'),
                    ],
                  ),
                ),
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                          image: AssetImage("assets/1.jpeg"),
                          fit: BoxFit.cover,
                        ),
                        color: Colors.amber,
                      ),
                      height: height * .7,
                      width: width,
                    ),
                    Positioned(
                      bottom: width * .1,
                      right: 0,
                      child: Container(
                        height: height * .12,
                        width: width * .8,
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.8),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                          ),
                        ),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 24,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Malena Veronica, 23",
                                style: GoogleFonts.lato(
                                  fontSize: height * .022,
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xff16123D),
                                ),
                              ),
                              SizedBox(
                                height: height * .005,
                              ),
                              Text(
                                "Fashion Designer at Victoria's Secret",
                                style: GoogleFonts.lato(
                                  fontSize: height * .018,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff16123D),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: height * .02,
                ),
              ],
            ),
          ),
        ),
        Positioned(
          bottom: height * .07,
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => DetailPage(),
                      ),
                    );
                  },
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
    );
  }
}
