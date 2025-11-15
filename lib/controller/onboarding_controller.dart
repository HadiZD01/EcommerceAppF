import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/core/constant/routes.dart';
import 'package:untitled/core/services/services.dart';
import 'package:untitled/data/datasource/static/static.dart';

abstract class OnboardingController extends GetxController {
  nextPage();
  onPageChangedSlide(int index);
}

class OnboardingControllerImp extends OnboardingController {
  int currentpage = 0;
  late PageController pageController = PageController();
  MyService myservice = Get.find();
  // String textbutton = "Next";

  @override
  nextPage() {
    currentpage++;
    if (currentpage > onboardinglist.length - 1) {
      // textbutton = "Get Started";
      myservice.sharedPreferences.setString("seeit", '1');
      Get.offAllNamed(AppRoutes.login);
    } else {
      pageController.animateToPage(
        currentpage,
        duration: Duration(milliseconds: 900),
        curve: Curves.ease,
      );
    }

    update();
  }

  @override
  onPageChangedSlide(int index) {
    currentpage = index;
    update();
  }

  void oninit() {
    pageController = PageController();
    super.onInit();
  }
}
