import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:untitled/controller/onboarding_controller.dart';
import 'package:untitled/core/constant/color.dart';
import 'package:untitled/data/datasource/static/static.dart';

class Dotcontroller extends StatelessWidget {
  const Dotcontroller({super.key});

  @override
  Widget build(BuildContext context) {
    return GetBuilder<OnboardingControllerImp>(
      builder: (controller) => Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ...List.generate(
            onboardinglist.length,
            (index) => AnimatedContainer(
              margin: EdgeInsets.symmetric(horizontal: 3),
              duration: Duration(microseconds: 900),
              height: 5,
              width: controller.currentpage == index ? 20 : 5,
              decoration: BoxDecoration(
                color: Color(ColorApp.primaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
