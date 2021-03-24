import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:onboarding_screen/controller/onboarding_controller.dart';

class OnboardingPage extends StatefulWidget {
  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final _controller = OnboardingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            right: 30,
            child: Text(
              "Skip",
              style: GoogleFonts.lato(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xffA74612),
              ),
            ),
          ),
          PageView.builder(
            controller: _controller.pageController,
            onPageChanged: _controller.selectedPageIndex,
            itemCount: _controller.onboardingPages.length,
            itemBuilder: (context, index) {
              return SafeArea(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(_controller.onboardingPages[index].imageUrl),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        _controller.onboardingPages[index].title,
                        style: GoogleFonts.lato(
                            fontSize: 26, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: Text(
                          _controller.onboardingPages[index].text,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.lato(
                              fontSize: 18, fontWeight: FontWeight.w500),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
          Positioned(
            bottom: 250,
            left: 160,
            child: Row(
              children: List.generate(
                _controller.onboardingPages.length,
                (index) => Obx(
                  () {
                    return Container(
                      margin: EdgeInsets.all(5),
                      height: 9,
                      width: 26,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: _controller.selectedPageIndex.value == index
                            ? Color(0xffA74612)
                            : Color(0xffDBDBDB),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 140,
            left: 120,
            child: InkWell(
              onTap: _controller.forwardAction,
              child: Container(
                child: Center(
                  child: Text(
                    "Next",
                    style: GoogleFonts.lato(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                height: 56,
                width: 180,
                decoration: BoxDecoration(
                  color: Color(0xffA74612),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
