import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shimmer/shimmer.dart';

class NavBar extends StatelessWidget {
  const NavBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      shape: CircularNotchedRectangle(),
      child: Container(
        height: 60,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 11),
                    child: Text(
                      "Home",
                      style: GoogleFonts.lato(
                        fontSize: 24,
                        fontWeight: FontWeight.w500,
                        color: Color(0xffFD581F),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 4,
                  ),
                  dotBuilder(),
                ],
              ),
              SvgPicture.asset(
                "assets/search.svg",
                height: 26,
                width: 26,
                color: Colors.black87,
              ),
              SvgPicture.asset(
                "assets/heart.svg",
                height: 30,
                width: 30,
                color: Colors.black87,
              ),
              SvgPicture.asset(
                "assets/user.svg",
                height: 26,
                width: 26,
                color: Colors.black87,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget dotBuilder() {
    return Shimmer.fromColors(
      period: Duration(microseconds: 30),
      baseColor: Color(0xffEE621E),
      highlightColor: Color(0xffFEC2AE),
      child: Row(
        children: [
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffEE621E),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffEE621E),
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffEE621E),
            ),
          ),
        ],
      ),
    );
  }
}
