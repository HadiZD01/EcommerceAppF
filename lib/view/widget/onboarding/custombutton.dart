import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:untitled/controller/onboarding_controller.dart';
import 'package:untitled/core/constant/color.dart';

class CustomButtonOnboarding extends GetView<OnboardingControllerImp> {
  const CustomButtonOnboarding({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        controller.nextPage();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(ColorApp.primaryColor),
        padding: EdgeInsets.symmetric(horizontal: 90, vertical: 15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      child: Text('Next', style: TextStyle(fontSize: 16, color: Colors.white)),
    );
  }
}
