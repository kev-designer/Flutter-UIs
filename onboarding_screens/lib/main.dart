import 'package:flutter/material.dart';
import 'package:onboarding_screen/views/onboarding_page.dart';

void main() {
  runApp(MaterialApp(
    home: OnboardingScreen(),
    debugShowCheckedModeBanner: false,
  ));
}

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OnboardingPage(),
    );
  }
}
