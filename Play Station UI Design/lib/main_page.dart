import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_station/playStation_card.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 20, right: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image(
                image: AssetImage("assets/menu.png"),
                height: 16,
              ),
              Image(
                image: AssetImage("assets/icon.png"),
                height: 40,
              ),
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: AssetImage("assets/user.jpeg"), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text(
                  "Fetured",
                  style: GoogleFonts.lato(
                    fontSize: 22,
                  ),
                ),
              ),
              SizedBox(
                height: 2,
              ),
              Container(
                child: Text(
                  "Collection",
                  style: GoogleFonts.lato(
                      fontSize: 28, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              PlaystationCard(),
            ],
          ),
        ],
      ),
    );
  }
}
