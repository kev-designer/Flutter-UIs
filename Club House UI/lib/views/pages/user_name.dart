import 'package:club_house/views/pages/name_page.dart';
import 'package:club_house/views/pages/profile_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserName extends StatefulWidget {
  @override
  _UserNameState createState() => _UserNameState();
}

class _UserNameState extends State<UserName> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    TextEditingController uname = TextEditingController();

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
                builder: (context) => NamePage(),
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
                  "Pick a username",
                  style: GoogleFonts.nunito(
                    fontSize: height * .022,
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
                child: TextFormField(
                  controller: uname,
                  autocorrect: false,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Please enter User Name";
                    } else if (value.trim().length < 2) {
                      return "User Name must contain more than 3 letters";
                    }
                  },
                  keyboardType: TextInputType.text,
                  textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "@username",
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
                        builder: (context) => ProfilePage(),
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
