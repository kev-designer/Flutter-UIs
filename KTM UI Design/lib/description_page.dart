import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DescriptionBuilder extends StatelessWidget {
  const DescriptionBuilder({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        width: 430,
        decoration: BoxDecoration(
          color: Color(0xff262626),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40),
            topRight: Radius.circular(40),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 40, left: 20, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "KTM Duke 200",
                  style: GoogleFonts.lato(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                child: Text(
                  "About Bike",
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Opacity(
                  opacity: 0.6,
                  child: Text(
                    "KTM bikes price starts at Rs. 1.51 Lakh . KTM offers 9 new bike models and 12 upcoming models in India. The most popular KTM bikes are 200 Duke , 125 Duke and 390 Duke .",
                    style: GoogleFonts.lato(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  "Specification",
                  style: GoogleFonts.lato(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  svgBuilder(
                    "assets/engine.svg",
                    "Engine",
                  ),
                  svgBuilder(
                    "assets/speed.svg",
                    "Speed",
                  ),
                  svgBuilder(
                    "assets/power.svg",
                    "Power",
                  ),
                  svgBuilder(
                    "assets/gears.svg",
                    "Gears",
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Container(
                height: 60,
                width: 400,
                decoration: BoxDecoration(
                  color: Color(0xffFD501E),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Center(
                  child: Text(
                    "BOOK NOW",
                    style: GoogleFonts.lato(
                        fontSize: 22,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ]);
  }

  Container svgBuilder(String svgImage, String svgName) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              SvgPicture.asset(
                svgImage,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                svgName,
                style: GoogleFonts.lato(
                    fontSize: 18,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
