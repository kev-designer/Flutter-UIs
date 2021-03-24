import 'package:club_house/views/pages/user_name.dart';
import 'package:club_house/views/pages/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamePage extends StatefulWidget {
  @override
  _NamePageState createState() => _NamePageState();
}

class _NamePageState extends State<NamePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController fname = TextEditingController();
    TextEditingController lname = TextEditingController();

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
                builder: (context) => WelcomePage(),
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
                  "What's your full name ?",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //First Name
                  Container(
                    alignment: Alignment.center,
                    height: height * .052,
                    width: width * .44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter First Name";
                        } else if (value.trim().length < 2) {
                          return "Name must contain 3 letters";
                        }
                      },
                      controller: fname,
                      keyboardType: TextInputType.text,
                      textInputAction: TextInputAction.next,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "First Name",
                        focusColor: Colors.black,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 16),
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
                  //Last Name
                  Container(
                    alignment: Alignment.center,
                    height: height * .052,
                    width: width * .44,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Please enter First Name";
                        } else if (value.trim().length < 2) {
                          return "Name must contain 3 letters";
                        }
                      },
                      controller: lname,
                      keyboardType: TextInputType.text,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Last Name",
                        focusColor: Colors.black,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 12, vertical: 16),
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
              SizedBox(
                height: height * .6,
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
                        builder: (context) => UserName(),
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
}
