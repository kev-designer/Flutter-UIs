import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xff5375AB),
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(16.0),
          child: SvgPicture.asset(
            "assets/menu.svg",
          ),
        ),
        centerTitle: true,
        title: Text(
          "Event Templates",
          style: GoogleFonts.nunito(
              color: Color(0xffF0F0E4),
              fontSize: height * .024,
              fontWeight: FontWeight.w600),
        ),
      ),
      backgroundColor: Color(0xffFAFAFA),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 24,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: height * .066,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6),
                  border: Border.all(
                    color: Color(0xffB2B2B2),
                  ),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Search for the cards…",
                        style: GoogleFonts.nunito(
                          color: Color(0xffB2B2B2),
                          fontSize: height * .02,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SvgPicture.asset("assets/search.svg"),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: height * .024,
              ),
              //SELECT CARD TEXT
              Text(
                "Select card type",
                style: GoogleFonts.lato(
                  fontSize: height * .024,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(
                height: height * .024,
              ),
              //CARD LIST
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/wedding.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(.2),
                    ),
                  ),
                  Container(
                    height: height * .1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color(0xff5375AB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Weeding Templates",
                            style: GoogleFonts.lato(
                                color: Color(0xffF0F0E4),
                                fontSize: height * .024,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/eye.svg"),
                              SizedBox(
                                width: width * .06,
                              ),
                              SvgPicture.asset("assets/edit.svg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .032,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Container(
                    height: height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/birthday.jpeg"),
                        fit: BoxFit.cover,
                      ),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    height: height * .4,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.black.withOpacity(.2),
                    ),
                  ),
                  Container(
                    height: height * .1,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(16),
                        topLeft: Radius.circular(16),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      color: Color(0xff5375AB),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, right: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Birthday Templates",
                            style: GoogleFonts.lato(
                                color: Color(0xffF0F0E4),
                                fontSize: height * .024,
                                fontWeight: FontWeight.w600),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset("assets/eye.svg"),
                              SizedBox(
                                width: width * .06,
                              ),
                              SvgPicture.asset("assets/edit.svg"),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .032,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
