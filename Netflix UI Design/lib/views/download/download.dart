import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:netflix_project/views/download/finddownload.dart';

class DowanloadPage extends StatefulWidget {
  @override
  _DowanloadPageState createState() => _DowanloadPageState();
}

class _DowanloadPageState extends State<DowanloadPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Padding(
        padding: const EdgeInsets.only(top: 80, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Image.asset(
                "assets/netflix.png",
                height: 34,
              ),
            ),
            SizedBox(
              height: 150,
            ),
            Center(
              child: SvgPicture.asset(
                "assets/down-arrow.svg",
                height: 230,
              ),
            ),
            SizedBox(
              height: 32,
            ),
            Text(
              "Movies & TV Shows that you download will appear here.",
              style: GoogleFonts.lato(
                fontSize: 23,
                height: 1.4,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 140,
            ),
            Center(
              child: Container(
                width: 330,
                height: 58,
                child: FlatButton(
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FindDownloadPage(),
                      ),
                    );
                  },
                  child: Center(
                    child: Text(
                      "Find Something to Download",
                      style: GoogleFonts.lato(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColor,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
