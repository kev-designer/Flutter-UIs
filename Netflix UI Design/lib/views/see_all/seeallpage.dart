import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import 'package:google_fonts/google_fonts.dart';

class SeeAllPage extends StatefulWidget {
  @override
  _SeeAllPageState createState() => _SeeAllPageState();
}

class _SeeAllPageState extends State<SeeAllPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          "TV Shows",
          style: GoogleFonts.lato(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: false,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: StaggeredGridView.countBuilder(
                crossAxisCount: 2,
                padding: EdgeInsets.only(top: 1),
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                itemCount: 12,
                itemBuilder: (context, index) {
                  return Container(
                    height: 255,
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
