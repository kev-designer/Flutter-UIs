import 'package:drinks_app/main_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(MaterialApp(
    home: HerbelDrinks(),
    debugShowCheckedModeBanner: false,
  ));
}

class HerbelDrinks extends StatefulWidget {
  @override
  _HerbelDrinksState createState() => _HerbelDrinksState();
}

class _HerbelDrinksState extends State<HerbelDrinks> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor: Color(0xff262626),
          body: MainPage(),
        ),
        Positioned(
          bottom: 20,
          left: 16,
          right: 16,
          child: Container(
            height: 70,
            width: 400,
            child: Padding(
              padding: const EdgeInsets.only(left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  svgBuilder(
                    "assets/home.svg",
                  ),
                  svgBuilder(
                    "assets/search.svg",
                  ),
                  svgBuilder(
                    "assets/cart.svg",
                  ),
                  svgBuilder(
                    "assets/user.svg",
                  ),
                ],
              ),
            ),
            decoration: BoxDecoration(
              color: Color(0xff2E2E2E),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ],
    );
  }

  Widget svgBuilder(
    String svgIcon,
  ) {
    return SvgPicture.asset(
      svgIcon,
      height: 25,
    );
  }
}
