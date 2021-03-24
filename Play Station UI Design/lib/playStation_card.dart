import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:play_station/detail_page.dart';

class PlaystationCard extends StatefulWidget {
  @override
  _PlaystationCardState createState() => _PlaystationCardState();
}

class _PlaystationCardState extends State<PlaystationCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  child: remoteBuilder(
                    "Custom Xbox X Controller",
                    "Rs 230.89",
                    "assets/green.png",
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff56A86A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  child: remoteBuilder(
                    "Custom Xbox X Controller",
                    "Rs 230.89",
                    "assets/black.png",
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff393939),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  child: remoteBuilder(
                    "Custom Xbox X Controller",
                    "Rs 230.89",
                    "assets/red.png",
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff9F272C),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ProductDetailPage()),
                );
              },
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: 180,
                    child: remoteBuilder(
                      "Custom Xbox X Controller",
                      "Rs 230.89",
                      "assets/blue.png",
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xff1B4086),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  child: remoteBuilder(
                    "Custom Xbox X Controller",
                    "Rs 230.89",
                    "assets/green.png",
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff56A86A),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
            Stack(
              children: [
                Container(
                  height: 250,
                  width: 180,
                  child: remoteBuilder(
                    "Custom Xbox X Controller",
                    "Rs 230.89",
                    "assets/black.png",
                  ),
                  decoration: BoxDecoration(
                    color: Color(0xff393939),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Widget remoteBuilder(String itemName, String price, String imagePath) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            itemName,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            price,
            style: GoogleFonts.lato(
                color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold),
          ),
          Image(
              height: 196, image: AssetImage(imagePath), fit: BoxFit.fitWidth),
        ],
      ),
    );
  }
}
