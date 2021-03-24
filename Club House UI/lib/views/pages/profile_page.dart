import 'dart:io';

import 'package:club_house/views/pages/user_name.dart';
import 'package:club_house/views/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  Future<File> imageFile;

  pickImageFromGallery(ImageSource source) {
    setState(
      () {
        imageFile = ImagePicker.pickImage(source: source);
      },
    );
  }

  Widget showImage() {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return FutureBuilder<File>(
      future: imageFile,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done &&
            snapshot.data != null) {
          return Container(
            height: height * .17,
            width: width * .37,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(54),
              image: DecorationImage(
                  image: FileImage(
                    snapshot.data,
                  ),
                  fit: BoxFit.cover),
            ),
          );
        } else if (snapshot.error != null) {
          return Text("Error Picking Image");
        } else {
          return Icon(
            Icons.add_photo_alternate_outlined,
            color: Color(0xff5476AA),
            size: height * .08,
          );
        }
      },
    );
  }

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
                builder: (context) => UserName(),
              ),
            );
          },
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 16, right: 20),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                );
              },
              child: Text(
                'Skip',
                style: GoogleFonts.nunito(
                  fontSize: height * .018,
                  color: Colors.grey,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
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
                  "Great! Now add a photo?",
                  style: GoogleFonts.nunito(
                    fontSize: height * .024,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(
                height: height * .08,
              ),
              //IMAGE
              InkWell(
                onTap: () {
                  pickImageFromGallery(ImageSource.gallery);
                },
                child: Container(
                  height: height * .17,
                  width: width * .37,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(54),
                  ),
                  child: showImage(),
                ),
              ),
              SizedBox(
                height: height * .44,
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
                        builder: (context) => HomePage(),
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
