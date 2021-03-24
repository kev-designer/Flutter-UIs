import 'package:club_house/views/pages/name_page.dart';
import 'package:club_house/views/pages/phone_number.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Theme.of(context).backgroundColor,
        backgroundColor: Color(0xffF1EFE4),
        elevation: 0,
        leading: IconButton(
          padding: EdgeInsets.only(left: 20),
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.pop(
              context,
              MaterialPageRoute(
                builder: (context) => PhoneNumber(),
              ),
            );
          },
        ),
      ),
      backgroundColor: Color(0xffF1EFE4),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
          top: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              child: Text(
                "🎉  Welcome to Clubhouse you are Friend of Keval Gadhiya !",
                style: GoogleFonts.nunito(
                  fontSize: height * .022,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: height * .03,
            ),
            //PROFILEPIC
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: height * .12,
                      width: width * .26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.brown[100],
                        image: DecorationImage(
                            image: AssetImage("assets/zeus.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: height * .01,
                    ),
                    Text(
                      "Zeus",
                      style: GoogleFonts.nunito(
                        fontSize: height * .016,
                        fontWeight: FontWeight.w700,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            //TEXT
            SizedBox(
              height: height * .4,
            ),
            Text(
              "Let's setup your profile ?",
              style: GoogleFonts.nunito(
                fontSize: height * .018,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
            SizedBox(
              height: height * .024,
            ),
            Container(
              height: height * .06,
              width: width * .62,
              child: RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100.0),
                ),
                onPressed: () {},
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
                        "🐋 ",
                        style: GoogleFonts.nunito(
                          fontSize: height * .022,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        "Import from Whale",
                        style: GoogleFonts.nunito(
                          fontSize: height * .022,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height * .02,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NamePage(),
                  ),
                );
              },
              child: Text(
                "Enter my info manully",
                style: GoogleFonts.nunito(
                  fontSize: height * .016,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff5476AA),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
