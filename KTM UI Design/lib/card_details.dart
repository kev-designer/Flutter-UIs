import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ktm_demo/detail_page.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 520,
      width: 388,
      decoration: BoxDecoration(
        color: Color(0xffF6F7F8),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Column(
        children: [
          cardBuilder(
            "KTM",
            "DUKE 200",
            "assets/bike.png",
          ),
          InkWell(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailPage()));
            },
            child: Container(
              height: 55,
              width: 388,
              decoration: BoxDecoration(
                color: Color(0xff262626),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),
              child: Center(
                child: Text(
                  "VIEW  DETAILS",
                  style: GoogleFonts.lato(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget cardBuilder(String companyName, String bikeName, String imageName) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 40),
            child: Text(
              companyName,
              style:
                  GoogleFonts.lato(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(
              left: 16,
              right: 16,
            ),
            child: Text(
              bikeName,
              style: GoogleFonts.lato(
                  color: Color(0xffEE621E),
                  fontSize: 28,
                  fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: Container(
            height: 320,
            width: 380,
            child: Image(
              image: AssetImage(imageName),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 170),
          child: Row(
            children: [
              Opacity(
                opacity: 0.5,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffEE621E),
                  ),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Container(
                height: 8,
                width: 8,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Color(0xffEE621E),
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Opacity(
                opacity: 0.5,
                child: Container(
                  height: 8,
                  width: 8,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Color(0xffEE621E),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
