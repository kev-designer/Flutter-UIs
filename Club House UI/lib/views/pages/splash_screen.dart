// import 'dart:html';

import 'package:club_house/views/pages/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).backgroundColor,
        backgroundColor: Color(0xffF1EFE4),
        elevation: 0,
      ),
      backgroundColor: Color(0xffF1EFE4),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "🎉  Welcome !",
                style: GoogleFonts.nunito(
                  fontSize: height * .032,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: height * .04,
              ),
              textBuilder(
                "We are working hard to get Clubhouse ready for launch! While we wrap up the finishing touches, we are adding people gradully to make sure nothing breaks. :)",
                height,
              ),
              SizedBox(
                height: height * .04,
              ),
              textBuilder(
                "If you don't yet have an invite, you can reserve your username now and we'll get you on very soon. We are so greatful you're here and can't wait to have you join! 🙏",
                height,
              ),
              SizedBox(
                height: height * .04,
              ),
              textBuilder(
                "🏠 Paul, Rohan & the Clubhouse team",
                height,
              ),
              SizedBox(
                height: height * .18,
              ),
              //BUTTON
              Center(
                child: Container(
                  height: height * .06,
                  width: width * .62,
                  child: RaisedButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(100.0),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => PhoneNumber(),
                        ),
                      );
                    },
                    elevation: 0,
                    color: Color(0xff5476AA),
                    textColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 2,
                        vertical: 4,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Get your username ",
                            style: GoogleFonts.nunito(
                              fontSize: height * .022,
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Icon(
                            Icons.arrow_right_alt,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * .02,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 2,
                    vertical: 4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Have an invite text? ",
                        style: GoogleFonts.nunito(
                          fontSize: height * .016,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff5476AA),
                        ),
                      ),
                      Text(
                        " Sign in",
                        style: GoogleFonts.nunito(
                          fontSize: height * .018,
                          fontWeight: FontWeight.bold,
                          color: Color(0xff5476AA),
                        ),
                      ),
                      Icon(
                        Icons.arrow_right_alt,
                        color: Color(0xff5476AA),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget textBuilder(String text, double height) {
    return Text(
      text,
      style: GoogleFonts.nunito(
        fontSize: height * .021,
        height: height * .002,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
