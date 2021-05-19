// import 'dart:html';

import 'package:event_template_app/controller/authentication_service.dart';
import 'package:event_template_app/controller/google_auth.dart';
import 'package:event_template_app/pages/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String error = "";
  AuthenticationService _firebaseauth = AuthenticationService();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color(0xffFAFAFA),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.only(
            left: 34,
            right: 34,
            top: 34,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Sign In",
                style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: height * .032,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * .04,
              ),
              Form(
                key: formKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //MOBILE NUMBER
                    Text(
                      "Email",
                      style: GoogleFonts.lato(
                          color: Color(0xff333333),
                          fontSize: height * .02,
                          fontWeight: FontWeight.w600),
                    ),

                    TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "E-ma il can not be empty";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      style: GoogleFonts.lato(
                        fontSize: height * .016,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter E-mail ID",
                        hintStyle: GoogleFonts.lato(
                          fontSize: height * .016,
                          color: Color(0xffB2B2B2),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * .024,
                    ),
                    //PASSWORD
                    Text(
                      "Passsword",
                      style: GoogleFonts.lato(
                          color: Color(0xff333333),
                          fontSize: height * .02,
                          fontWeight: FontWeight.w600),
                    ),
                    TextFormField(
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Password can not be empty";
                        } else if (value.trim().length < 8) {
                          return "Password must contain 8 Character";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      controller: passwordController,
                      obscureText: true,
                      style: GoogleFonts.lato(
                        fontSize: height * .016,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                          hintText: "Enter Password",
                          hintStyle: GoogleFonts.lato(
                            fontSize: height * .016,
                            color: Color(0xffB2B2B2),
                          )),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * .06,
              ),
              //SIGNIN WITH TEXT
              Text(
                "Sign In With",
                style: GoogleFonts.nunito(
                    color: Color(0xff333333),
                    fontSize: height * .02,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: height * .024,
              ),
              //GOOGLE BUTTON  //FACEBOOK BUTTON
              Row(
                children: [
                  //GOOGLE BUTTON
                  InkWell(
                    onTap: () {
                      signInWithGoogle(context);
                    },
                    child: Container(
                      height: height * .05,
                      width: width * .11,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                          image: AssetImage("assets/google.png"),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: width * .04,
                  ),
                  //FACEBOOK BUTTON
                  Container(
                    height: height * .05,
                    width: width * .11,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage("assets/fb.png"),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * .12,
              ),
              //SIGN IN BUTTON
              InkWell(
                onTap: () async {
                  if (formKey.currentState.validate()) {
                    dynamic result = await _firebaseauth
                        .signInWithEmailAndPassword(email, password);
                    if (result == null) {
                      setState(() {
                        error = "User does bot exits";
                      });
                    }
                    // firestore.collection("User").add({
                    //   "Name": nameController.text,
                    //   "E-mail": emailController.text,
                    //   "Password": passwordController.text,
                    //   "RePassword": repasswordController.text,
                    // }).whenComplete(
                    //   () => (Navigator.push(
                    //     context,
                    //     MaterialPageRoute(builder: (context) => HomeScreen()),
                    //   )),
                    // );
                  }
                },
                child: Container(
                  alignment: Alignment.center,
                  height: height * .07,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Color(0xff5375AB),
                  ),
                  child: Text(
                    "Sign In",
                    style: GoogleFonts.nunito(
                        color: Colors.white,
                        fontSize: height * .024,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: height * .024,
              ),
              //SIGN UP TEXT
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don’t have an account ?",
                    style: GoogleFonts.nunito(
                        color: Color(0xff333333),
                        fontSize: height * .02,
                        fontWeight: FontWeight.w600),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignupScreen(),
                        ),
                      );
                    },
                    child: Text(
                      " Sing Up",
                      style: GoogleFonts.nunito(
                          color: Color(0xff5375AB),
                          fontSize: height * .02,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
