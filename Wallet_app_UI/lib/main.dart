import 'package:flutter/material.dart';

import 'home_view.dart';

void main() {
  runApp(MaterialApp(
    home: WalletApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class WalletApp extends StatefulWidget {
  @override
  _WalletAppState createState() => _WalletAppState();
}

class _WalletAppState extends State<WalletApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeView(),
    );
  }
}
