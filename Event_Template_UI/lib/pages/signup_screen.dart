import 'package:event_template_app/pages/home_screen.dart';
import 'package:event_template_app/pages/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController repasswordController = TextEditingController();
  FirebaseFirestore firestore = FirebaseFirestore.instance;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  String validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value))
      return 'Enter Valid Email';
    else
      return null;
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    //double width = MediaQuery.of(context).size.width;

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
                "Sign Up",
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
                    //NAME
                    Text(
                      "Name",
                      style: GoogleFonts.lato(
                          color: Color(0xff333333),
                          fontSize: height * .02,
                          fontWeight: FontWeight.w600),
                    ),
                    TextFormField(
                      controller: nameController,
                      keyboardType: TextInputType.text,
                      validator: (value) {
                        if (value.isEmpty) {
                          return "Name can not be empty";
                        } else if (value.trim().length < 4) {
                          return "Name must contain 4 Character";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      style: GoogleFonts.lato(
                        fontSize: height * .016,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                        hintText: "Enter Name",
                        hintStyle: GoogleFonts.lato(
                          fontSize: height * .016,
                          color: Color(0xffB2B2B2),
                        ),
                      ),
                    ),

                    SizedBox(
                      height: height * .024,
                    ),

                    //EMAIL ID
                    Text(
                      "E-mail",
                      style: GoogleFonts.lato(
                          color: Color(0xff333333),
                          fontSize: height * .02,
                          fontWeight: FontWeight.w600),
                    ),

                    TextFormField(
                      validator: validateEmail,
                      textInputAction: TextInputAction.next,
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
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
                    SizedBox(
                      height: height * .024,
                    ),
                    //REPASSWORD
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
                          return "Confirm password can't be empty..!";
                        } else if (value != passwordController.text) {
                          return "Confirm Password did not match";
                        } else {
                          return null;
                        }
                      },
                      textInputAction: TextInputAction.next,
                      controller: repasswordController,
                      obscureText: true,
                      style: GoogleFonts.lato(
                        fontSize: height * .016,
                        color: Color(0xff333333),
                      ),
                      decoration: InputDecoration(
                          hintText: "Re - Enter Password",
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
              //SIGN UP BUTTON
              InkWell(
                onTap: () {
                  if (formKey.currentState.validate()) {
                    firestore.collection("User").add({
                      "Name": nameController.text,
                      "E-mail": emailController.text,
                      "Password": passwordController.text,
                      "RePassword": repasswordController.text,
                    }).whenComplete(
                      () => (Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      )),
                    );
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
                    "Sign Up",
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
                    "Already have an account ?",
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
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                    child: Text(
                      " Sing In",
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
