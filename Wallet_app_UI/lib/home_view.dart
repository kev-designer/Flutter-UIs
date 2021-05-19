import 'package:flutter/material.dart';
import 'package:wallet_app/history_page.dart';
import 'package:wallet_app/send_money.dart';

import 'card_widget.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double _height = 0.0;
  double _width = 0.0;

  @override
  Widget build(BuildContext context) {
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        height: _height,
        width: _width,
        child: Stack(
          children: [
            Container(
              height: _height / 2.3,
              child: Material(
                child: Image.asset(
                  "assets/images/bg1.jpg",
                  fit: BoxFit.cover,
                ),
                elevation: 5,
              ),
            ),
            Container(
              height: _height / 2.3,
              color: Colors.black87.withOpacity(0.3),
            ),
            SizedBox(
              height: 20,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 48.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(
                      Icons.menu,
                      color: Colors.white,
                      size: 36,
                    ),
                    Icon(
                      Icons.notifications,
                      color: Colors.white,
                      size: 36,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(top: 144.0, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Wallet",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 40,
                          fontWeight: FontWeight.bold),
                    ),
                    Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 36,
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 258.0,
                  left: 20,
                ),
                child: CardWidget(),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 460.0,
                ),
                child: SendMoney(),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 630.0,
                ),
                child: HistoryPage(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
