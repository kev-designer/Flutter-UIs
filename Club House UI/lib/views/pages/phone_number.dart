import 'package:club_house/views/pages/splash_screen.dart';
import 'package:club_house/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneNumber extends StatefulWidget {
  @override
  _PhoneNumberState createState() => _PhoneNumberState();
}

class _PhoneNumberState extends State<PhoneNumber> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController phnController = TextEditingController();

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
                builder: (context) => SplashScreen(),
              ),
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            top: 10,
          ),
          child: Column(
            children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  "Enter your phone #",
                  style: GoogleFonts.nunito(
                    fontSize: height * .024,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: height * .04,
              ),
              //TEXTFIELD
              Container(
                alignment: Alignment.center,
                height: height * .054,
                width: width * .84,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Row(
                  children: [
                    CountryCodePicker(
                      onChanged: print,
                      padding: EdgeInsets.all(8),
                      initialSelection: 'IN',
                      showCountryOnly: false,
                      textStyle: TextStyle(
                          color: Colors.black,
                          fontSize: height * .018,
                          fontWeight: FontWeight.w600),
                      showOnlyCountryWhenClosed: false,
                      alignLeft: false,
                    ),
                    SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: TextFormField(
                        controller: phnController,
                        autocorrect: false,
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Please enter Mobile Number";
                          } else if (value.trim().length < 9) {
                            return "Enter validate Phone Number";
                          }
                        },
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          focusColor: Colors.black,
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 12, vertical: 16),
                          hintStyle: TextStyle(
                            color: Colors.black38,
                            fontSize: height * .018,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: GoogleFonts.lato(
                          fontSize: height * .018,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: height * .48,
              ),
              //TEXT
              Container(
                width: width * .85,
                alignment: Alignment.center,
                child: textBuilder(
                  "By entering your number, you're agreeing to our Terms of Service and Privacy Policy. Thanks!",
                  height,
                ),
              ),
              SizedBox(
                height: height * .05,
              ),
              //NEXTBUTTON
              Container(
                height: height * .06,
                width: width * .35,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100.0),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => WelcomePage(),
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
                          "Next",
                          style: GoogleFonts.nunito(
                            fontSize: height * .024,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          width: width * .02,
                        ),
                        Icon(
                          Icons.arrow_right_alt,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
      backgroundColor: Color(0xffF1EFE4),
    );
  }

  Widget textBuilder(String text, double height) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: GoogleFonts.nunito(
        fontSize: height * .018,
        height: height * .0018,
        fontWeight: FontWeight.w600,
        color: Colors.black,
      ),
    );
  }
}
