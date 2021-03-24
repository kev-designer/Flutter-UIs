import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TranscationHistory extends StatelessWidget {
  const TranscationHistory({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 50),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Transcation History",
                    style: GoogleFonts.lato(
                        fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                historyBuilder("assets/zomato.png", "Zomato", "Debit Card",
                    "- Rs 200", "11:20 A.M"),
                SizedBox(
                  height: 32,
                ),
                historyBuilder("assets/swiggy.png", "Swiggy", "Debit Card",
                    "- Rs 180", "12:40 P.M"),
                SizedBox(
                  height: 32,
                ),
                historyBuilder("assets/ola.jpg", "OLA", "Debit Card",
                    "- Rs 180", "05:50 P.M"),
                SizedBox(
                  height: 32,
                ),
                historyBuilder("assets/uber.png", "Uber", "Debit Card",
                    "- Rs 180", "08:415 P.M"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget historyBuilder(String imageName, String appName, String cardType,
    String price, String time) {
  return Container(
    child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              image: AssetImage(imageName),
            ),
          ),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  appName,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  cardType,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: 160,
        ),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  price,
                  style: GoogleFonts.lato(
                    fontSize: 18,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                child: Text(
                  time,
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
