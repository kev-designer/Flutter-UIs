import 'package:flutter/material.dart';
import 'package:onboarding_screen/models/onboarding_info.dart';
import 'package:get/state_manager.dart';
import 'package:get/utils.dart';

class OnboardingController {
  var selectedPageIndex = 0.obs;
  var pageController = PageController();

  forwardAction() {
    pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
  }

  List<OnboardingInfo> onboardingPages = [
    OnboardingInfo("assets/1.png", "Travel the world",
        "Travel over 90+ countries with few taps on your mobile screen."),
    OnboardingInfo("assets/2.png", "Let’s Travel",
        "A journey of a thousand miles must begin with a single step."),
    OnboardingInfo("assets/3.png", "Enjoy Food",
        "Also enjoy the best food task during travelling."),
  ];
}
