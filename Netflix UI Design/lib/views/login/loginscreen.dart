import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/views/login/forgotscreen.dart';
import 'package:netflix_project/views/home/homepage.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  GlobalKey<FormState> _formKey = GlobalKey();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Center(
                child: Container(
                  padding: EdgeInsets.only(top: 190),
                  child: Image.asset(
                    "assets/netflix.png",
                    height: 50,
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    //email
                    Container(
                      height: 62,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Email can't be Empty";
                          } else {
                            return null;
                          }
                        },
                        controller: email,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.emailAddress,
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                        cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.email_outlined,
                            size: 30,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintText: "Email Address",
                          hintStyle: GoogleFonts.lato(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: 24,
                    ),
                    //password
                    Container(
                      height: 62,
                      child: TextFormField(
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Password can't be Empty";
                          } else {
                            return null;
                          }
                        },
                        controller: password,
                        textInputAction: TextInputAction.next,
                        obscureText: true,
                        style: GoogleFonts.lato(
                          fontSize: 22,
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).primaryColor,
                        ),
                        cursorColor: Theme.of(context).primaryColor,
                        decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.lock_outline,
                            size: 30,
                            color: Theme.of(context).primaryColor,
                          ),
                          hintText: "Password",
                          hintStyle: GoogleFonts.lato(
                            fontSize: 22,
                            color: Theme.of(context).primaryColor,
                            fontWeight: FontWeight.w500,
                          ),
                          fillColor: Colors.white,
                          filled: true,
                          border:
                              OutlineInputBorder(borderSide: BorderSide.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ForgotPassword()),
                  );
                },
                child: Text(
                  "Forgot Password",
                  style: GoogleFonts.lato(
                    fontSize: 20,
                    color: Theme.of(context).buttonColor,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              FlatButton(
                height: 62,
                color: Theme.of(context).buttonColor,
                onPressed: () {},
                child: Center(
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              FlatButton(
                height: 62,
                shape: Border(
                  top: BorderSide(
                    color: Theme.of(context).buttonColor,
                  ),
                  left: BorderSide(
                    color: Theme.of(context).buttonColor,
                  ),
                  right: BorderSide(
                    color: Theme.of(context).buttonColor,
                  ),
                  bottom: BorderSide(
                    color: Theme.of(context).buttonColor,
                  ),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Center(
                  child: Text(
                    "Skip",
                    style: GoogleFonts.lato(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Color(0xffE80B18),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
