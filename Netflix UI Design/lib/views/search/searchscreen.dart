import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
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
              height: 24,
            ),
            Container(
              height: 50,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff626262),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Opacity(
                opacity: .5,
                child: Padding(
                  padding: const EdgeInsets.only(left: 16),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/search.svg',
                        height: 24,
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Text(
                        "Search for show, movies…",
                        style: GoogleFonts.lato(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                child: Text(
                  "Top Search",
                  style: GoogleFonts.lato(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                padding: EdgeInsets.only(top: 1),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Container(
                    width: 140,
                    height: 240,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      image: DecorationImage(
                        image: AssetImage(
                          "assets/3.jpg",
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                  );
                },
                staggeredTileBuilder: (index) => StaggeredTile.fit(1),
                scrollDirection: Axis.vertical,
                // children: [
                //   SizedBox(
                //     width: 24,
                //   ),
                //   Container(
                //     width: 145,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/5.jpg",
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   SizedBox(
                //     width: 24,
                //   ),
                //   Container(
                //     width: 145,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/6.jpg",
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   SizedBox(
                //     width: 24,
                //   ),
                //   Container(
                //     width: 145,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/1.png",
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   SizedBox(
                //     width: 24,
                //   ),
                //   Container(
                //     width: 145,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/2.jpg",
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                //   SizedBox(
                //     width: 24,
                //   ),
                //   Container(
                //     width: 145,
                //     decoration: BoxDecoration(
                //       borderRadius: BorderRadius.circular(8),
                //       image: DecorationImage(
                //         image: AssetImage(
                //           "assets/3.jpg",
                //         ),
                //         fit: BoxFit.cover,
                //       ),
                //     ),
                //   ),
                // ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
