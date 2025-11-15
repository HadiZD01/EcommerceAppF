import 'package:flutter/material.dart';
import 'package:untitled/controller/onboarding_controller.dart';
// import 'package:untitled/core/constant/color.dart';
// import 'package:untitled/data/datasource/static/static.dart';
import 'package:untitled/view/widget/onboarding/custombutton.dart';
import 'package:untitled/view/widget/onboarding/dotcontroller.dart';
import 'package:untitled/view/widget/onboarding/slideronboarding.dart';
import 'package:get/get.dart';

class Onboarding extends StatelessWidget {
  const Onboarding({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(OnboardingControllerImp());
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(flex: 2, child: Slideronboarding()),
            Expanded(
              flex: 1,
              child: Column(
                children: [
                  Dotcontroller(),
                  SizedBox(height: 150.0),
                  CustomButtonOnboarding(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
